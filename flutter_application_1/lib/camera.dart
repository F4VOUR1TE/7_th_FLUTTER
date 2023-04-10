import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;
import 'package:path/path.dart';
import 'package:async/async.dart';
import 'package:my_app/prediction.dart';
import 'package:my_app/geo_location.dart';
import 'package:geolocator/geolocator.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';


// class app extends StatelessWidget {
//   const app({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(appBar: AppBar(centerTitle: true,), 
//     );
//   }
// }

class HomeScren extends StatefulWidget {
  const HomeScren({super.key});

  @override
  State<HomeScren> createState() => _HomeScrenState();
}


class _HomeScrenState extends State<HomeScren>{
  XFile? _image;
  final ImagePicker picker = ImagePicker();
  
  Future<void> getPhoto(BuildContext context) async {
    final File file;
    try{
      final XFile? photo = await picker.pickImage(source: ImageSource.camera);
      print("foto");
      setState(() {
        _image = photo;
      });
      if (_image != null){
          File image = File(_image!.path);
          uploadImageToServer(image);
      }
      else{
        throw Exception("ImageNotFound");
      }  
      
    } 
    catch (e){
      throw Exception(e);
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text('QR Code Scanner & Generator'),
        ),
        //modalProgressHud уберите только и всё будет супер
        body: ModalProgressHUD()
        Center(
            child:
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                        ElevatedButton.icon(
                            onPressed: () async {
                              getPhoto(context);
                            },
                            label: const Text('Camera'),
                            icon: const Icon(Icons.image),
                    ),
                  ],
                ),
        ),
    );
  }
}


uploadImageToServer(File imageFile) async {
  final Position position = await determinePosition();
  var geo = Map<String, String>();
  geo['geo'] = '${position.latitude}, ${position.longitude}'; 
  print("attempting to connecto server......");
  var stream = http.ByteStream(DelegatingStream.typed(imageFile.openRead()));
  var length = await imageFile.length();
  print(length);

  var uri = Uri.parse('http://192.168.0.104:5000/predict');
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


void main() => runApp(const MaterialApp(home:HomeScren(),));