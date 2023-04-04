import 'package:flutter/material.dart';
import 'package:flutter_application_1/custom_icons.dart';
import 'package:flutter_application_1/gifts_page.dart';
import 'package:flutter_application_1/info_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Container(
            alignment: Alignment.topCenter,
            child: Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/bg.png"),
                      fit: BoxFit.cover)),
              child: Stack(
                children: [
                  Positioned(
                    top: 10,
                    left: 10,
                    child: FloatingActionButton(
                      heroTag: "btn1",
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const SafeArea(child: Gifts())));
                      },
                      backgroundColor: Color.fromARGB(255, 5, 142, 76),
                      tooltip: 'Подарки',
                      child: const Icon(MyFlutterApp.gift, color: Colors.white),
                    ),
                  ),
                  Positioned(
                    top: 10,
                    right: 10,
                    child: FloatingActionButton(
                      heroTag: "btn2",
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const SafeArea(child: Info())));
                      },
                      backgroundColor: Color.fromARGB(255, 5, 142, 76),
                      tooltip: 'Информация',
                      child: const Icon(
                        Icons.help,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Positioned(
                      top: 50,
                      // right: 50,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        alignment: Alignment.center,
                        child: const Image(
                          image: AssetImage("assets/images/word.png"),
                          height: 250,
                          width: 250,
                        ),
                      )),
                  Positioned(
                      top: 250,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        alignment: Alignment.center,
                        child: const Image(
                          image: AssetImage("assets/images/user.png"),
                          height: 150,
                          width: 150,
                        ),
                      )),
                  Positioned(
                      top: 425,
                      right: 255,
                      child: Container(
                        // width: MediaQuery.of(context).size.width,
                        // alignment: Alignment.center,
                        child: const Image(
                          image: AssetImage("assets/images/berry.png"),
                          height: 65,
                          width: 65,
                        ),
                      )),
                  Positioned(
                      top: 480,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        alignment: Alignment.center,
                        child: OutlinedButton(
                          child: Text('Ваши баллы : $_counter'),
                          style: OutlinedButton.styleFrom(
                            primary: Color.fromARGB(255, 0, 0, 0),
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            side: BorderSide(width: 1),
                            textStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 35,
                                fontStyle: FontStyle.italic),
                          ),
                          onPressed: () {},
                        ),
                      )),
                  Positioned(
                      top: 500,
                      right: -60,
                      child: Container(
                        // width: MediaQuery.of(context).size.width,
                        // alignment: Alignment.center,
                        child: const Image(
                          image: AssetImage("assets/images/berry_2.png"),
                          height: 120,
                          width: 120,
                        ),
                      )),
                  Positioned(
                      // top: 620,
                      left: -30,
                      bottom: -30,
                      child: Container(
                        // width: MediaQuery.of(context).size.width,
                        // alignment: Alignment.center,
                        transform: Matrix4.rotationZ(-0.45),
                        child: const Image(
                          image: AssetImage("assets/images/bottle.png"),
                          height: 170,
                          width: 170,
                        ),
                      )),
                  Positioned(
                      // top: 750,
                      bottom: 1,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        alignment: Alignment.center,
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              shape: const StadiumBorder(),
                              backgroundColor:
                                  const Color.fromARGB(255, 5, 142, 76),
                              padding: const EdgeInsets.all(10.0),
                              minimumSize: const Size(400.0, 50.0),
                            ),
                            child: const Text(
                              "Сканировать",
                              style: TextStyle(fontSize: 24),
                            )),
                      )),
                ],
              ),
            )),
      ),
    ));
  }
}
