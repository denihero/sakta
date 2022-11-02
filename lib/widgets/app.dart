import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sakta/widgets/widget.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              FirstScreenWallBody(),
            ],
          ),
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
              height: 500,
              child: Stack(
                children: [
                  Center(
                    child: CircleWallWidget(),
                  ),
                  /*Center(
                    child: CircleWallWidgetThird(),
                  ),*/
                  Center(
                    child: CircleWallWidgetSecond(),
                  ),
                  Column(
                    children: [
                      Expanded(child: TextWidget()),
                      EnterPhoneNumberButtonWidget(),
                      // EnterPhoneNumberPinWidget(),
                      SizedBox(height: 20),
                      NextButtonWidget(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
