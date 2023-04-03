import 'package:flutter/material.dart';
import 'package:flutter_application_1/gifts_page.dart';
import 'package:flutter_application_1/user_page.dart';

import 'info_page.dart';

// тут нужно вообще все нахуй переделать!!!!
// в этом файле надо оставить только MaterialApp!!!!!
class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'User_page',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.purple,
        ),
        // home: const SafeArea(child: MyHomePage()));
        home: const SafeArea(child: Gifts()));
  }
}
