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
        appBar: AppBar(
          title: const Text("Menu"),
        ),
        body: Column(
          children: [
            Container(
              width: 50,
              height: 50,
              color: Colors.red,
            )
          ],
        ),
      ),
    );
  }
}
