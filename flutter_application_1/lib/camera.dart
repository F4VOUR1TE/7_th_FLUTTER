import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;
import 'package:path/path.dart';
import 'package:async/async.dart';
import 'package:flutter_application_1/geo_location.dart';
import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:get/get.dart';
//import 'package:modal_progress_hud/modal_progress_hud.dart';


final ImagePicker picker = ImagePicker();


void dialog1() {
  Get.dialog(name: "dialog1", AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        title: SizedBox(
          width: 400,
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const[
              Icon(Icons.info_rounded),
              Expanded(child: Text("Предоставьте доступ к камере и геопозиции!", textAlign: TextAlign.center,))
              ],
            )
          ),
        actions: [
          TextButton(onPressed: (){
             openAppSettings();
             Get.back();},
             child: const Text("OK", textAlign: TextAlign.left,)),
          TextButton(onPressed: ()=> Get.back(), child: Text("Canel"))
        ]
      ),
    );
}

Future<bool> getPhoto() async {
  var status = await Permission.camera.status;
  bool prediction = false;
  print(status);
  try{
    final XFile? photo = await picker.pickImage(source: ImageSource.camera);
    if (photo != null){
      File image = File(photo.path);
      prediction = await uploadImageToServer(image);
    }
  }
  on PlatformException catch (e){
    dialog1();
  }
  return prediction;
} 


uploadImageToServer(File imageFile) async {
  final Position? position = await determinePosition();
  if (position == null){
    dialog1();
    return false;
  }
  var geo = <String, String>{};
  
  geo['geo'] = '${position.latitude}, ${position.longitude}'; 
  print("attempting to connecto server......");
  var stream = http.ByteStream(DelegatingStream.typed(imageFile.openRead()));
  var length = await imageFile.length();
  print(length);

  // ТУТ МЕНЯЕМ АДРЕС СЕРВЕРА
  var uri = Uri.parse('http://192.168.0.104:5000/predict');
  print("connection established.");
  var request = http.MultipartRequest("POST", uri);
  print(imageFile.path.split('/').last);
  var multipartFile = http.MultipartFile.fromBytes('file', File(imageFile.path).readAsBytesSync(),
      filename: imageFile.path.split('/').last);

  request.files.add(multipartFile);
  request.fields['geo'] = geo['geo']!;
  try{
    http.Response response = await http.Response.fromStream(await request.send());
    print("Result: ${response.statusCode}");
    if (response.statusCode==200){
      try{
        print(response.body);
        final Map parsed = json.decode(response.body);
        print(parsed['prediction']);
        return parsed['prediction'];
      }catch (FormatException){
        return false;
      }
    }
  }catch(e){
    return false;
  }

}
