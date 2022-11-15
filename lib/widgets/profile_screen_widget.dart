
import 'package:flutter/material.dart';

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
              padding: const EdgeInsets.only(left: 80),
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
      child:  Row(
        mainAxisAlignment: MainAxisAlignment.start,
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