import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:math';
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

XFile? _image;
bool _saving = false;

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

// showAlertDialog(BuildContext context) {

//   // set up the button
//   Widget cancelButton = TextButton(
//     child: const Text("Cancel"),
//     onPressed:  () {
//       Navigator.pop(context);
//       },
//   );
//   Widget okButton = TextButton(
//     child: const Text("OK"),
//     onPressed: () {
//       openAppSettings();
//       Navigator.pop(context); 
//       },
//   );

//   // set up the AlertDialog
//   AlertDialog alert = AlertDialog(
//     title: const Text("Внимание!"),
//     content: const Text("Предоставьте доступ к камере и геолокации!"),
//     actions: [
//       okButton,
//       cancelButton,
//     ],
//   );

//   // show the dialog
//   showDialog(
//     context: context,
//     builder: (BuildContext context) {
//       return alert;
//     },
//   );
// }

Future<void> getPhoto(BuildContext context) async {
  var status = await Permission.camera.status;
  print(status);
  try{
    final XFile? photo = await picker.pickImage(source: ImageSource.camera);
    print("foto");
    if (photo != null){
      File image = File(photo.path);
      uploadImageToServer(image);
    }
  }
  on PlatformException catch (e){
    dialog1();
  }
} 


uploadImageToServer(File imageFile) async {
  final Position? position = await determinePosition();
  if (position == null){
    dialog1();
    return print("43");
  }
  var geo = <String, String>{};
  
  geo['geo'] = '${position.latitude}, ${position.longitude}'; 
  print("attempting to connecto server......");
  var stream = http.ByteStream(DelegatingStream.typed(imageFile.openRead()));
  var length = await imageFile.length();
  print(length);

  // ТУТ МЕНЯЕМ АДРЕС СЕРВЕРА
  var uri = Uri.parse('http://192.168.0.108:5000/predict');
  print("connection established.");
  var request = http.MultipartRequest("POST", uri);
  print(imageFile.path.split('/').last);
  var multipartFile = http.MultipartFile.fromBytes('file', File(imageFile.path).readAsBytesSync(),
      filename: imageFile.path.split('/').last);
  //contentType: new MediaType('image', 'png'));

  //contentType: new MediaType('image', 'png'));
  request.files.add(multipartFile);
  request.fields['geo'] = geo['geo']!;
  http.Response response = await http.Response.fromStream(await request.send());
  print("Result: ${response.statusCode}");
  print(response.body);
  // try{
  //   loadPred(response.body);
  // }
  
}
// class photoID extends StatefulWidget {
//   const photoID({super.key});

//   @override
//   State<photoID> createState() => _photoIDState();
// }

// class _photoIDState extends State<photoID> {
  
//   @override
//   Widget build(BuildContext context) {
//       return const Placeholder();
//   }
// }
