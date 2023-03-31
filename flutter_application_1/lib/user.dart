import 'package:flutter/material.dart';
import 'package:flutter/src/material/colors.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'User_page',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.purple,
        ),
        home: const SafeArea(child: MyHomePage()));
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  // final String title;

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
      // appBar: AppBar(
      //   // Here we take the value from the MyHomePage object that was created by
      //   // the App.build method, and use it to set our appbar title.
      //   title: Text(widget.title),
      // ),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/bg.png"), fit: BoxFit.cover)),
        child: Row(
          
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Column(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       Container(
            //           height: 100,
            //           width: 100,
            //           // color: Colors.black,
            //           alignment: Alignment.topLeft,
            //           padding: const EdgeInsets.all(5),
            //           child: FloatingActionButton(
            //             onPressed: () => print("проверка работы 1-ой кнопки"),
            //             tooltip: 'моя кнопка для проверки',
            //             child: const Icon(
            //               Icons.question_mark_outlined,
            //               size: 30,
            //             ),
            //           )),
            //       const SizedBox(
            //         height: 100,
            //         width: 100,
            //         // color: Colors.blue,
            //       ),
            //       const SizedBox(
            //         height: 100,
            //         width: 100,
            //         // color: Colors.red,
            //       )
            //     ]),
            Container(
                // transformAlignment: Alignment.topLeft,
                height: 100,
                width: 100,
                color: Colors.black,
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.all(5),
                child: FloatingActionButton(
                  onPressed: () => print("проверка работы 1-ой кнопки"),
                  tooltip: 'моя кнопка для проверки',
                  child: const Icon(
                    Icons.question_mark_outlined,
                    size: 30,
                  ),
                )),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    print('popa');
                  },
                  tooltip: 'Increment',
                  child: const Icon(Icons.man),
                ),
                Container(
                  color: Colors.blue,
                  child: Text('Ваши баллы : $_counter',
                      style: const TextStyle(fontSize: 24.0)),
                ),
                FloatingActionButton(
                  onPressed: _incrementCounter,
                  tooltip: 'Increment',
                  child: const Icon(Icons.add),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () => print("проверка работы 2-ой кнопки"),
                  tooltip: 'моя 2-ая кнопка для проверки',
                  child: const Icon(
                    Icons.rocket,
                    size: 30,
                  ),
                ),

                // FloatingActionButton(
                //   onPressed: () => print("проверка работы 1-ой кнопки"),
                //   tooltip: 'моя кнопка для проверки',
                //   child: const Icon(Icons.question_mark),
                // )
              ],
            ),
          ],
        ),
      ),
      // floatingActionButton: Column(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     FloatingActionButton(
      //       onPressed: () => print("проверка работы 2-ой кнопки"),
      //       tooltip: 'моя 2-ая кнопка для проверки',
      //       child: const Icon(
      //         Icons.rocket,
      //         size: 30,
      //       ),
      //     ),
      //     FloatingActionButton(
      //       onPressed: _incrementCounter,
      //       tooltip: 'Increment',
      //       child: const Icon(Icons.add),
      //     ),
      // FloatingActionButton(
      //   onPressed: () => print("проверка работы 1-ой кнопки"),
      //   tooltip: 'моя кнопка для проверки',
      //   child: const Icon(Icons.question_mark),
      // )
      // ],
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
