import 'package:flutter/material.dart';
import 'package:flutter_application_1/custom_icons.dart';

class Gifts extends StatelessWidget {
  const Gifts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/bg.png"),
                    fit: BoxFit.cover)),
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                            // color: Colors.red,
                            alignment: Alignment.topLeft,
                            child: IconButton(
                              icon: const Icon(Icons.arrow_back),
                              iconSize: 50,
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              tooltip: 'Назад',
                            )),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          height: 200,
                          width: 200,
                          // color: Colors.orange,
                          alignment: Alignment.center,
                          child: const Text(
                            "Подарки",
                            style: TextStyle(
                                fontSize: 30,
                                fontFamily: 'Montserrat2',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      const Expanded(
                          flex: 1,
                          child: SizedBox(
                            width: 50,
                          ))
                    ],
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Wrap(
                    alignment: WrapAlignment.start,
                    spacing: 20,
                    runSpacing: 20,
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        // color: Colors.black,
                        child: const Icon(
                          MyFlutterApp.gift,
                          size: 100,
                        ),
                      ),
                      // const Icon(MyFlutterApp.gift),
                      Container(
                        height: 100,
                        width: 100,
                        // color: Colors.black,
                        child: const Icon(
                          MyFlutterApp.gift,
                          size: 100,
                        ),
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        // color: Colors.black,
                        child: const Icon(
                          MyFlutterApp.gift,
                          size: 100,
                        ),
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        // color: Colors.black,
                        child: const Icon(
                          MyFlutterApp.gift,
                          size: 100,
                        ),
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        // color: Colors.black,
                        child: const Icon(
                          MyFlutterApp.gift,
                          size: 100,
                        ),
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        // color: Colors.black,
                        child: const Icon(
                          MyFlutterApp.gift,
                          size: 100,
                        ),
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        // color: Colors.black,
                        child: const Icon(
                          MyFlutterApp.gift,
                          size: 100,
                        ),
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        // color: Colors.black,
                        child: const Icon(
                          MyFlutterApp.gift,
                          size: 100,
                        ),
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        // color: Colors.black,
                        child: const Icon(
                          MyFlutterApp.gift,
                          size: 100,
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                    flex: 1,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      alignment: Alignment.bottomRight,
                      child: const Image(
                        image: AssetImage("assets/images/Bear.png"),
                        height: 250,
                        width: 250,
                      ),
                    )),
              ],
            )));
  }
}
