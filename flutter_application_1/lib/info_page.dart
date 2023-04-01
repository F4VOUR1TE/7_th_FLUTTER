import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  const Info({super.key});

  @override
  Widget build(Object context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/bg.png"), fit: BoxFit.cover)),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                  flex: 1,
                  child: Container(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        icon: const Icon(Icons.arrow_back),
                        iconSize: 50,
                        onPressed: () => print('zalupa 1'),
                      ))),
              Expanded(
                  flex: 5,
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    // color: Colors.black,
                    margin: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(243, 186, 206, 0.613),
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),

                    child: const Text(
                      "Это приложение создано, для того чтобы люди которые заботятся об окружающей среде и планете, получали бонусы за каждую сданную бутылку. Для того чтобы начать копить баллы на подарки, вам необходимо нажать на кнопку \"Сканировать\" и сделать 2 фотографии: первую, как вы вставили бутылку и вторую, как аппарат принял бутылку. После чего вы получите 1 балл за каждую сданную бутылку. Далее при накоплении баллов вы можете зайти в раздел \"Подарки\" и посмотреть сколько вам осталось накопить. ",
                      style: TextStyle(
                        fontSize: 20,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )),
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

                    child: const Text(
                      '''
За остальными вопросами обращайтесь по телефону:
 +7 995 888 88 88 
Или пишите в наши соц.сети:
Вк - Пашка какашка
Телеграм - Пашка какашка''',
                      style: TextStyle(
                        fontSize: 20,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )),
              const SizedBox(
                height: 100,
              )
            ]),
      ),
    );
  }
}
