import 'package:flutter/material.dart';
import '../widgets/profile_screen_widget.dart';
import '../widgets/profile_settings_screen_widget.dart';
import '../widgets/registration_widget_screen.dart';

class ProfileSettingsScreen extends StatelessWidget {
  const ProfileSettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromRGBO(148, 107, 236, 1),
        body: Stack(
          children: [
            const BackgroundStackWidget(),
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  SizedBox(width: double.infinity),
                  Padding(
                    padding: EdgeInsets.only(top: 60, bottom: 60),
                    child: TextConstructor(
                      title: 'Настройка профиля',
                      size: 25,
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                    ),
                  ),
                  PhotoPart(),
                  Padding(
                    padding: EdgeInsets.only(bottom: 25),
                    child: TextFieldCard(
                      initialString: 'Введите свое имя*',
                      keyboardType: TextInputType.name,
                      color: Colors.black,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 240),
                    child: TextFieldCardPhone(
                      initialString: 'Введите свой номер*',
                      keyboardType: TextInputType.phone,
                      color: Colors.black,
                    ),
                  ),
                  NextButtonWidget(
                    fontSize: 20,
                    width: 280,
                    height: 53,
                    borderRadius: 20,
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
