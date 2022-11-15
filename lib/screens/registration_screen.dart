import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sakta/widgets/registration_widget_screen.dart';

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
            children: const [
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
                  const Center(
                      child:
                          Image(image: AssetImage('assets/Ellipse 4 (1).png'))),
                  const Center(
                      child:
                          Image(image: AssetImage('assets/Ellipse 6 (3).png'))),
                  const Center(
                      child: Image(image: AssetImage('assets/Ellipse 3.png'))),
                  Column(
                    children: [
                      const Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(top: 120),
                          child: TextWidget(),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(),
                        child: Column(
                          children: [
                            EnterPhoneNumberButtonWidget(),
                            const SizedBox(height: 20),
                            const NextButtonWidget(
                              fontSize: 14,
                              height: 50,
                              width: 230,
                              borderRadius: 10,
                            ),
                          ],
                        ),
                      ),
                      // EnterPhoneNumberPinWidget(),
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
