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
            FirstScreenBody(),
          ],
        ),
      ),
    );
  }
}

class FirstScreenBody extends StatelessWidget {
  const FirstScreenBody({Key? key}) : super(key: key);

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
            Container(
              width: 353.0,
              height: 341.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.elliptical(353, 341)),
                border: Border.all(
                  color: Color.fromRGBO(161, 121, 244, 0.5),
                  width: 25.0,
                ),
              ),
              child: textCenter(),
            ),
          ],
        ),
      ),
    );
  }

  Center textCenter() {
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
