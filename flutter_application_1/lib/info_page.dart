import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  const Info({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/bg1.png"), fit: BoxFit.cover)),
        child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                  flex: 1,
                  child: Container(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        icon: const Icon(Icons.arrow_back),
                        iconSize: 50,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        tooltip: 'Назад',
                      ))),
              Expanded(
                  flex: 6,
                  child: Container(
                      padding: const EdgeInsets.all(12),

                      // color: Colors.black,
                      margin: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(243, 186, 206, 0.613),
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                      child: const SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Text(
                          "Это приложение создано для того, чтобы люди, которые заботятся об окружающей среде и планете, получали бонусы за каждую сданную бутылку. Для того, чтобы начать копить баллы на подарки, вам необходимо нажать на кнопку \"Сканировать\" и сделать фотографию бутылки. После чего вы получите 1 балл за каждую сданную бутылку. Далее при накоплении баллов вы можете зайти в раздел \"Подарки\" и посмотреть, сколько вам осталось накопить. ",
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'Montserrat2',
                              fontWeight: FontWeight.bold),
                        ),
                      ))),
              // const SizedBox(
              //   height: 50,
              // ),
              Expanded(
                  flex: 3,
                  child: Container(
                      padding: const EdgeInsets.all(12),
                      // color: Colors.black,
                      margin: const EdgeInsets.fromLTRB(20, 20, 20, 40),
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(243, 186, 206, 0.613),
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                      child: const SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Text(
                          '''
За остальными вопросами обращайтесь по телефону:
 +7 000 000 00 00 
Или пишите в наши соц.сети:
Вк - vk.com/eco_bottle
Телеграм - ...''',
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'Montserrat2',
                              fontWeight: FontWeight.bold),
                        ),
                      ))),
            ]),
      ),
    );
  }
}
