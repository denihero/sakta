import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sakta/screens/map_screen.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromRGBO(148, 107, 236, 1),
        body: SafeArea(
          child: Stack(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 320, top: 10),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.settings),
                      color: Colors.white,
                      iconSize: 35,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const CircleAvatar(
                        radius: 54,
                        backgroundImage: AssetImage('assets/Ksenia.png'),
                      ),
                      const SizedBox(width: 30),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const TextConstructor(
                            fontWeight: FontWeight.normal,
                            title: 'Ксения',
                            size: 30,
                          ),
                          const SizedBox(height: 3),
                          const TextConstructor(
                            fontWeight: FontWeight.normal,
                            title: 'Бишкек, Кыргызстан',
                            size: 13,
                          ),
                          const SizedBox(height: 28),
                          Container(
                            height: 25,
                            width: 130,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(color: Colors.white),
                            ),
                            child: const IncognitoButton(),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const NavigatorMapWidgetParent(),
            ],
          ),
        ),
      ),
    );
  }
}

class IncognitoButton extends StatelessWidget {
  const IncognitoButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        SizedBox(width: 5),
        Icon(
          Icons.privacy_tip_outlined,
          color: Colors.white,
          size: 18,
        ),
        SizedBox(width: 5),
        TextConstructor(
            title: 'Включить инкогнито\nрежим',
            size: 8,
            fontWeight: FontWeight.normal),
      ],
    );
  }
}

class TextConstructor extends StatelessWidget {
  final String title;
  final double size;
  final FontWeight fontWeight;

  const TextConstructor(
      {Key? key,
      required this.title,
      required this.size,
      required this.fontWeight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontSize: size,
          fontFamily: 'Montserrat',
          fontWeight: fontWeight,
        ),
      ),
    );
  }
}
