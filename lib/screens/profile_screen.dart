import 'package:flutter/material.dart';
import 'package:sakta/screens/map_screen.dart';

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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
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
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                                title: 'Ксения',
                                size: 30,
                              ),
                              const SizedBox(height: 3),
                              const TextConstructor(
                                color: Colors.white,
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
                      const SizedBox(height: 28),
                      const TextConstructor(
                        color: Colors.white,
                        title: 'Добавить друзей:',
                        size: 20,
                        fontWeight: FontWeight.normal,
                      ),
                      const SizedBox(height: 28),
                      const FriendsCardWidget(
                        image: 'assets/Ksenia.png',
                        name: 'Лейла',
                        phoneNumber: '0555 55 55 00',
                      ),
                      const FriendsCardWidget(
                        image: 'assets/Ksenia.png',
                        name: 'Сара',
                        phoneNumber: '0555 55 55 00',
                      ),
                      const FriendsCardWidget(
                        image: 'assets/Ksenia.png',
                        name: 'Лола',
                        phoneNumber: '0555 55 55 00',
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

class FriendsCardWidget extends StatelessWidget {
  final String image;
  final String name;
  final String phoneNumber;

  const FriendsCardWidget({
    Key? key,
    required this.image,
    required this.name,
    required this.phoneNumber,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        height: 53,
        width: 278,
        decoration: BoxDecoration(
          color: const Color.fromRGBO(217, 217, 217, 1),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 11),
              child: CircleAvatar(
                radius: 21,
                backgroundImage: AssetImage(image),
              ),
            ),
            const SizedBox(width: 11),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 5),
                TextConstructor(
                  color: Colors.black,
                  title: name,
                  size: 18,
                  fontWeight: FontWeight.normal,
                ),
                TextConstructor(
                  title: phoneNumber,
                  size: 12,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 90),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.person_add_alt_outlined),
                color: const Color.fromRGBO(148, 107, 236, 1),
              ),
            ),
          ],
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
    return FlatButton(
      onPressed: () {},
      child: Row(
        children: const [
          Icon(
            Icons.privacy_tip_outlined,
            color: Colors.white,
            size: 18,
          ),
          SizedBox(width: 5),
          TextConstructor(
              color: Colors.white,
              title: 'Включить инкогнито\nрежим',
              size: 8,
              fontWeight: FontWeight.normal),
        ],
      ),
    );
  }
}

class TextConstructor extends StatelessWidget {
  final String title;
  final double size;
  final FontWeight fontWeight;
  final Color color;

  const TextConstructor({
    Key? key,
    required this.title,
    required this.size,
    required this.fontWeight,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontFamily: 'Montserrat',
        fontWeight: fontWeight,
      ),
    );
  }
}
