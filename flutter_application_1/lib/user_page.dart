import 'package:flutter/material.dart';

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});

//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.

//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".

//   // final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // appBar: AppBar(
//       //   // Here we take the value from the MyHomePage object that was created by
//       //   // the App.build method, and use it to set our appbar title.
//       //   title: Text(widget.title),
//       // ),
//       body: Container(
//         decoration: const BoxDecoration(
//             image: DecorationImage(
//                 image: AssetImage("assets/images/bg.png"), fit: BoxFit.cover)),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // Column(
//             //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             //     children: [
//             //       Container(
//             //           height: 100,
//             //           width: 100,
//             //           // color: Colors.black,
//             //           alignment: Alignment.topLeft,
//             //           padding: const EdgeInsets.all(5),
//             //           child: FloatingActionButton(
//             //             onPressed: () => print("проверка работы 1-ой кнопки"),
//             //             tooltip: 'моя кнопка для проверки',
//             //             child: const Icon(
//             //               Icons.question_mark_outlined,
//             //               size: 30,
//             //             ),
//             //           )),
//             //       const SizedBox(
//             //         height: 100,
//             //         width: 100,
//             //         // color: Colors.blue,
//             //       ),
//             //       const SizedBox(
//             //         height: 100,
//             //         width: 100,
//             //         // color: Colors.red,
//             //       )
//             //     ]),
//             Container(
//                 // transformAlignment: Alignment.topLeft,
//                 height: 100,
//                 width: 100,
//                 // color: Colors.black,
//                 alignment: Alignment.topLeft,
//                 padding: const EdgeInsets.all(5),
//                 child: FloatingActionButton(
//                   onPressed: () => print("проверка работы 1-ой кнопки"),
//                   tooltip: 'моя кнопка для проверки',
//                   child: const Icon(
//                     Icons.question_mark_outlined,
//                     size: 30,
//                   ),
//                 )),
//             Column(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 FloatingActionButton(
//                   onPressed: () {
//                     print('popa');
//                   },
//                   tooltip: 'Increment',
//                   child: const Icon(Icons.man),
//                 ),
//                 Container(
//                   color: Colors.blue,
//                   child: Text('Ваши баллы : $_counter',
//                       style: const TextStyle(fontSize: 24.0)),
//                 ),
//                 FloatingActionButton(
//                   onPressed: _incrementCounter,
//                   tooltip: 'Increment',
//                   child: const Icon(Icons.add),
//                 ),
//               ],
//             ),
//             Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 FloatingActionButton(
//                   onPressed: () => print("проверка работы 2-ой кнопки"),
//                   tooltip: 'моя 2-ая кнопка для проверки',
//                   child: const Icon(
//                     Icons.rocket,
//                     size: 30,
//                   ),
//                 ),

//                 // FloatingActionButton(
//                 //   onPressed: () => print("проверка работы 1-ой кнопки"),
//                 //   tooltip: 'моя кнопка для проверки',
//                 //   child: const Icon(Icons.question_mark),
//                 // )
//               ],
//             ),
//           ],
//         ),
//       ),
//       // floatingActionButton: Column(
//       //   mainAxisAlignment: MainAxisAlignment.center,
//       //   children: [
//       //     FloatingActionButton(
//       //       onPressed: () => print("проверка работы 2-ой кнопки"),
//       //       tooltip: 'моя 2-ая кнопка для проверки',
//       //       child: const Icon(
//       //         Icons.rocket,
//       //         size: 30,
//       //       ),
//       //     ),
//       //     FloatingActionButton(
//       //       onPressed: _incrementCounter,
//       //       tooltip: 'Increment',
//       //       child: const Icon(Icons.add),
//       //     ),
//       // FloatingActionButton(
//       //   onPressed: () => print("проверка работы 1-ой кнопки"),
//       //   tooltip: 'моя кнопка для проверки',
//       //   child: const Icon(Icons.question_mark),
//       // )
//       // ],
//       // ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }   СТАРАЯ ВЕРСИЯ
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
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/bg.png"), fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    print('popa');
                  },
                  backgroundColor: Color.fromARGB(255, 5, 142, 76),
                  tooltip: 'Increment',
                  child: const Icon(Icons.card_giftcard_outlined,
                      color: Colors.white),
                ),
                FloatingActionButton(
                  onPressed: _incrementCounter,
                  backgroundColor: Color.fromARGB(255, 5, 142, 76),
                  tooltip: 'Increment',
                  child: const Icon(
                    Icons.help_outlined,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Image(
                  image: AssetImage("assets/images/user.png"),
                  height: 150,
                  width: 150,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  color: Colors.blue.withOpacity(1),
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 150),
                  child: Text('Ваши баллы : $_counter',
                      style: const TextStyle(fontSize: 24.0)),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Image(
                  image: AssetImage("assets/images/berry.png"),
                  height: 100,
                  width: 100,
                ),
              ],
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(),
                    backgroundColor: const Color.fromARGB(255, 5, 142, 76),
                    padding: const EdgeInsets.all(10.0),
                    minimumSize: const Size(400.0, 50.0),
                  ),
                  child: const Text(
                    "Сканировать",
                    style: TextStyle(fontSize: 24),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
