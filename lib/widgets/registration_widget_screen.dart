import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';



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
          fontSize: 50,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.normal,
          letterSpacing: 20,
        ),
      ),
    );
  }
}

class NextButtonWidget extends StatelessWidget {

  final double fontSize;
  final double height;
  final double width;
  final double borderRadius;

  const NextButtonWidget({
    Key? key, required this.fontSize, required this.height, required this.width, required this.borderRadius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: FlatButton(
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            side: const BorderSide(
              color: Color.fromRGBO(255, 69, 29, 1),
            )),
        color: const Color.fromRGBO(255, 69, 29, 1),
        child: Text(
          'Далее',
          style: TextStyle(
              color: Colors.white,
              fontSize: fontSize,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.normal),
        ),
        onPressed: () {},
      ),
    );
  }
}

/// package: для ввода смс кода. Нужно адаптировать под процесс работы ///

class EnterPhoneNumberPinWidget extends StatelessWidget {
  const EnterPhoneNumberPinWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // <-- SEE HERE
      width: 100,
      height: 50,
      child: PinCodeTextField(
        textStyle: const TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.normal
        ),
        onChanged: (value) {
          print(value);
        },
        pinTheme: PinTheme(
          shape: PinCodeFieldShape.box,
          borderWidth: 0.5,
          fieldHeight: 20,
          fieldWidth: 20,
          inactiveColor: Colors.white,
          inactiveFillColor: Colors.white,
        ),
        length: 4,
        appContext: context,
      ),
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
