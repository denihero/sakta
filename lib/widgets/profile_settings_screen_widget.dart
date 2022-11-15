

import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class BackgroundStackWidget extends StatelessWidget {
  const BackgroundStackWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        Center(
            child:
            Image(image: AssetImage('assets/Ellipse 4 (1).png'))),
        Center(
            child:
            Image(image: AssetImage('assets/Ellipse 6 (3).png'))),
        Center(child: Image(image: AssetImage('assets/Ellipse 3.png'))),
      ],
    );
  }
}


class TextFieldCard extends StatelessWidget {
  final String initialString;
  final TextInputType keyboardType;
  final Color color;

  const TextFieldCard({
    Key? key,
    required this.initialString,
    required this.keyboardType,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 280,
      height: 53,
      child: TextField(
        keyboardType: keyboardType,
        textAlign: TextAlign.center,
        textAlignVertical: TextAlignVertical.bottom,
        style: TextStyle(
          color: color,
        ),
        cursorColor: Colors.black,
        decoration: InputDecoration(
          filled: true,
          //<-- SEE HERE
          fillColor: const Color.fromRGBO(217, 217, 217, 1),
          hintText: initialString,
          hintStyle: const TextStyle(
              color: Color.fromRGBO(120, 120, 120, 1),
              fontSize: 20,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.normal),
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Color.fromRGBO(217, 217, 217, 1)),
              borderRadius: BorderRadius.all(Radius.circular(20))),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Color.fromRGBO(217, 217, 217, 1)),
              borderRadius: BorderRadius.all(Radius.circular(20))),
          counter: const Offstage(),
        ),
      ),
    );
  }
}

class TextFieldCardPhone extends StatelessWidget {
  final String initialString;
  final TextInputType keyboardType;
  final Color color;

  const TextFieldCardPhone({
    Key? key,
    required this.initialString,
    required this.keyboardType,
    required this.color,
  }) : super(key: key);

  static var maskFormatter = MaskTextInputFormatter(
    mask: '+996 (###) ##-##-##',
    filter: {"#": RegExp(r'[0-9]')},
  );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 280,
      height: 53,
      child: TextField(
        keyboardType: keyboardType,
        inputFormatters: [maskFormatter],
        textAlign: TextAlign.center,
        textAlignVertical: TextAlignVertical.bottom,
        style: TextStyle(
          color: color,
        ),
        cursorColor: Colors.black,
        decoration: InputDecoration(
          filled: true,
          //<-- SEE HERE
          fillColor: const Color.fromRGBO(217, 217, 217, 1),
          hintText: initialString,
          hintStyle: const TextStyle(
              color: Color.fromRGBO(120, 120, 120, 1),
              fontSize: 20,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.normal),
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Color.fromRGBO(217, 217, 217, 1)),
              borderRadius: BorderRadius.all(Radius.circular(20))),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Color.fromRGBO(217, 217, 217, 1)),
              borderRadius: BorderRadius.all(Radius.circular(20))),
          counter: const Offstage(),
        ),
      ),
    );
  }
}

class PhotoPart extends StatelessWidget {
  const PhotoPart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(bottom: 50),
      child: CircleAvatar(
        radius: 80,
        backgroundImage: AssetImage('assets/Ksenia.png'),
      ),
    );
  }
}


