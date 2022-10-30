import 'dart:html';

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
                children: const [
                  Expanded(child: TextWidget()),
                  EnterPhoneNumberButtonWidget(),
                  SizedBox(height: 20),
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
      child: FlatButton(
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
            side: const BorderSide(
              color: Color.fromRGBO(255, 69, 29, 1),
            )),
        padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 100.0),
        color: const Color.fromRGBO(255, 69, 29, 1),
        child: const Text(
          'Далее',
          style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.normal),
        ),
        onPressed: () {},
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
      child: FlatButton(
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
            side: const BorderSide(color: Colors.white)
        ),
        padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 30.0),
        color: Colors.black.withOpacity(0.00),
        child: const Text(
          'Введите номер телефона',
          style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.normal),
        ),
        onPressed: () {},
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
        borderRadius: const BorderRadius.all(Radius.elliptical(353, 341)),
        border: Border.all(
          color: const Color.fromRGBO(161, 121, 244, 0.5),
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
