import 'package:flutter/material.dart';
import 'package:flutter_application_1/custom_icons.dart';

class MyHomePage_test extends StatefulWidget {
  const MyHomePage_test({super.key});
  @override
  State<MyHomePage_test> createState() => _MyHomePageState_test();
}

class _MyHomePageState_test extends State<MyHomePage_test> {
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
                      onPressed: () {
                        print('popa');
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
                      onPressed: _incrementCounter,
                      backgroundColor: Color.fromARGB(255, 5, 142, 76),
                      tooltip: 'Информация',
                      child: const Icon(
                        Icons.help_outlined,
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
                      top: 620,
                      left: 10,
                      child: Container(
                        // width: MediaQuery.of(context).size.width,
                        // alignment: Alignment.center,
                        child: const Image(
                          image: AssetImage("assets/images/bottle.png"),
                          height: 170,
                          width: 170,
                        ),
                      )),
                  Positioned(
                      top: 750,
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
