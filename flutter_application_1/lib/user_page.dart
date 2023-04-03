import 'package:flutter/material.dart';
import 'package:flutter_application_1/custom_icons.dart';

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
                  child: const Icon(MyFlutterApp.gift,
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
