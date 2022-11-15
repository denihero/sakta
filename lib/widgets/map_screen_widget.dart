
import 'package:flutter/material.dart';

class NavigatorMapWidget4 extends StatelessWidget {
  const NavigatorMapWidget4({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 20.0,
      ),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: 80.0,
          width: 80.0,
          decoration: BoxDecoration(
            color: const Color.fromRGBO(248, 82, 45, 1),
            borderRadius: BorderRadius.circular(
              40.0,
            ),
          ),
          child: Center(
            child: TextButton(
              onPressed: () {},
              child: const Text("SOS",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                  )),
            ),
          ),
        ),
      ),
    );
  }
}

class NavigatorMapWidget3 extends StatelessWidget {
  const NavigatorMapWidget3({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 15.0,
      ),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: 90.0,
          width: 90.0,
          decoration: BoxDecoration(
            color: const Color.fromRGBO(255, 69, 29, 1),
            borderRadius: BorderRadius.circular(
              45.0,
            ),
          ),
        ),
      ),
    );
  }
}

class NavigatorMapWidget2 extends StatelessWidget {
  const NavigatorMapWidget2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 15.0,
      ),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: 90.0,
          width: 90.0,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(
              45.0,
            ),
          ),
        ),
      ),
    );
  }
}

class NavigatorMapWidget1 extends StatelessWidget {
  const NavigatorMapWidget1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              flex: 3,
              child: Container(
                height: 60.0,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(217, 217, 217, 1),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(
                      20.0,
                    ),
                    topRight: Radius.circular(
                      0,
                    ),
                  ),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.phone_outlined,
                    color: Color.fromRGBO(148, 107, 236, 1),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                height: 60.0,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(217, 217, 217, 1),
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                height: 60.0,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(217, 217, 217, 1),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(
                      0,
                    ),
                    topRight: Radius.circular(
                      20.0,
                    ),
                  ),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.person_outline_rounded,
                    color: Color.fromRGBO(148, 107, 236, 1),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
