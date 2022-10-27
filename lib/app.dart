import 'package:flutter/material.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            FirstScreenWallBody(),
          ],
        ),
      ),
    );
  }
}

class FirstScreenWallBody extends StatelessWidget {
  const FirstScreenWallBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        color: const Color.fromRGBO(148, 107, 236, 1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 300,
              child: Column(
                children: [
                  Expanded(child: TextWidget()),
                  EnterPhoneNumberButtonWidget(),
                  NextButtonWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NextButtonWidget extends StatelessWidget {
  const NextButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 100.0),
      decoration: const BoxDecoration(
          color: Color.fromRGBO(255, 69, 29, 1),
          borderRadius: BorderRadius.all(Radius.circular(20.0))),
      child: const Text(
        'Далее',
        style: TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.normal),
      ),
    );
  }
}

class EnterPhoneNumberButtonWidget extends StatelessWidget {
  const EnterPhoneNumberButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 250,
      margin: const EdgeInsets.all(20.0),
      // padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.all(Radius.circular(20.0))),
      child: TextField(
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: "Введите номер телефона",
      hintStyle: TextStyle(color: Colors.white, fontFamily:'Montserrat' )
        ),
      ),
    );
  }
}

class CircleWallWidget extends StatelessWidget {
  const CircleWallWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 353.0,
      height: 341.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.elliptical(353, 341)),
        border: Border.all(
          color: Color.fromRGBO(161, 121, 244, 0.5),
          width: 25.0,
        ),
      ),
      child: null,
    );
  }
}

class TextWidget extends StatelessWidget {
  const TextWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "САКТА",
        style: TextStyle(
          color: Colors.white,
          fontSize: 55,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.normal,
          letterSpacing: 20,
        ),
      ),
    );
  }
}
