import 'package:flutter/material.dart';
import 'package:sakta/screens/map_screen.dart';
import 'package:sakta/screens/profile_screen.dart';
import 'package:sakta/screens/profile_settings_screen.dart';
import 'widgets/app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      ProfileSettingsScreen();
    //ProfileScreen();
      //MapScreen();
    //App() ;
  }
}
