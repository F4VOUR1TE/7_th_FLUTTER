// import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    Color hexToColor(String code) {
      return new Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
    }

    // TODO: implement build
    return Scaffold(
      body: Container(
          child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/bg1.png"), fit: BoxFit.cover)),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            alignment: Alignment.bottomCenter,
            padding: const EdgeInsets.fromLTRB(70, 0, 70, 10),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: "Ведите ваш номер телефона",
                labelStyle: TextStyle(color: Colors.black),
                filled: true,
                fillColor: Color.fromARGB(255, 255, 255, 255).withOpacity(0.6),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),

          // top: 100,
          Container(
            alignment: Alignment.topCenter,
            padding: const EdgeInsets.fromLTRB(70, 0, 70, 0),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: "Ведите СМС код",
                labelStyle: TextStyle(color: Colors.black),
                filled: true,
                fillColor: Color.fromARGB(255, 255, 255, 255).withOpacity(0.6),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
        ]),
      )),
    );
  }
}
