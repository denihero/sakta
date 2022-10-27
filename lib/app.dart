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
          children: [FirstScreenBody()],
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
          children: const [
            Text(
              "САКТА",
              style: TextStyle(
                color: Colors.white,
                fontSize: 55,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.normal,
                letterSpacing: 20,
              ),
            )
          ],
        ),
      ),
    );
  }
}
