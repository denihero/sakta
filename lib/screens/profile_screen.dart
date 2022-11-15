import 'package:flutter/material.dart';
import 'package:sakta/screens/map_screen.dart';
import '../widgets/profile_screen_widget.dart';

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
                                width: 145,
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


