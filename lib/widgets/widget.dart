import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:flutter/material.dart';

class NextButtonWidget extends StatelessWidget {
  const NextButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
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
    );
  }
}

class EnterPhoneNumberButtonWidget extends StatelessWidget {
  var maskFormatter = MaskTextInputFormatter(
    mask: '+996 (###) ##-##-##',
    filter: {"#": RegExp(r'[0-9]')},
  );

  EnterPhoneNumberButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // <-- SEE HERE
      width: 230,
      height: 50,
      child: TextField(
        keyboardType: TextInputType.phone,
        inputFormatters: [
          maskFormatter,
        ],
        textAlign: TextAlign.center,
        style: const TextStyle(color: Colors.white),
        cursorColor: Colors.white,
        decoration: const InputDecoration(
          labelText: 'Введите номер телефона',
          labelStyle: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.normal),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          // errorText: 'Something went wrong. Please re-check your input',
          counter: Offstage(),
        ),
      ),
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

class CircleWallWidget extends StatelessWidget {
  const CircleWallWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400.0,
      height: 400.0,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.elliptical(350, 350)),
        border: Border.all(
          color: const Color.fromRGBO(161, 121, 244, 0.8),
          width: 25.0,
        ),
      ),
      child: null,
    );
  }
}
class CircleWallWidgetSecond extends StatelessWidget {
  const CircleWallWidgetSecond({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.0,
      height: 300.0,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.elliptical(550, 550)),
        border: Border.all(
          color: const Color.fromRGBO(161, 121, 244, 0.5),
          width: 25.0,
        ),
      ),
      child: null,
    );
  }
}
class CircleWallWidgetThird extends StatelessWidget {
  const CircleWallWidgetThird({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500.0,
      height: 500.0,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.elliptical(350, 350)),
        border: Border.all(
          color: const Color.fromRGBO(161, 121, 244, 0.8),
          width: 25.0,
        ),
      ),
      child: null,
    );
  }
}