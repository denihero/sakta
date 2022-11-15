import 'package:flutter/material.dart';

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
          color: const Color.fromRGBO(161, 121, 244, 0.5),
          width: 40.0,
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
