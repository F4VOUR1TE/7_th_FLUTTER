// import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/user_page.dart';
import 'package:get/get.dart';

import 'otp.dart';

class Login extends StatefulWidget {
  const Login({super.key});
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  // final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();
  final TextEditingController _controller = TextEditingController();
  // final TextEditingController _vercodeController = TextEditingController();
  // String? _verificationCode;
  // String? _phonenumber;
  // late final String _phonenumber;

  @override
  Widget build(BuildContext context) {
    Color hexToColor(String code) {
      return Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      // key: _scaffoldkey,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/bg1.png"), fit: BoxFit.cover)),
        child: Column(children: [
          Container(
            // alignment: Alignment.center,
            padding: const EdgeInsets.fromLTRB(0, 45, 0, 0),
            child: const Image(
              image: AssetImage("assets/images/hero.png"),
              // fit: BoxFit.contain,
              height: 300,
              width: 300,
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            padding: const EdgeInsets.fromLTRB(70, 20, 70, 10),
            child: TextFormField(
              keyboardType: TextInputType.number,
              controller: _controller,
              // check
              // onChanged: (phonenumber) {
              //   _phonenumber = phonenumber;
              //   print(_phonenumber);
              // },
              //check
              decoration: InputDecoration(
                prefix: const Padding(
                  padding: EdgeInsets.all(4),
                  child: Text('+7'),
                ),
                labelText: "Ведите ваш номер телефона",
                labelStyle: const TextStyle(color: Colors.black),
                filled: true,
                fillColor:
                    const Color.fromARGB(255, 255, 255, 255).withOpacity(0.6),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          Container(
            // width: MediaQuery.of(context).size.width,
            // padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
            alignment: Alignment.center,
            child: ElevatedButton(
                onPressed: () {
                  // _phonenumber = _controller.text;
                  // Get.off(SafeArea(
                  //           child: OTPScreen(_controller.text),
                  //         ));
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => SafeArea(
                            child: OTPScreen(_controller.text),
                          )));
                },
                style: ElevatedButton.styleFrom(
                  shape: const StadiumBorder(),
                  backgroundColor: const Color.fromARGB(255, 5, 142, 76),
                  padding: const EdgeInsets.all(10.0),
                  minimumSize: const Size(100.0, 50.0),
                ),
                child: const Text(
                  "Подвердить",
                  style: TextStyle(
                      fontSize: 24,
                      fontFamily: 'Montserrat2',
                      fontWeight: FontWeight.bold),
                )),
          )
        ]),
      ),
    );
  }
}
