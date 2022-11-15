import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../widgets/map_screen_widget.dart';

class MapScreen extends StatefulWidget {
  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  static const double _defaultLat = 42.857510;
  static const double _defaultLong = 74.609613;

  static const CameraPosition _defaultLocation =
      CameraPosition(target: LatLng(_defaultLat, _defaultLong), zoom: 15);

  ///AIzaSyBbqNBURYXL0FhB3-jPRD84FGW2Yc3F23k///

  late Marker _origin;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            const SizedBox(
              height: 800,
              width: 400,
              child: GoogleMap(
                myLocationButtonEnabled: false,
                zoomControlsEnabled: false,
                initialCameraPosition: _defaultLocation,
              ),
            ),
            Positioned(
              right: 20,
              top: 40,
              child: FloatingActionButton(
                onPressed: () {},
                backgroundColor: const Color.fromRGBO(148, 107, 236, 1),
                child: const Icon(Icons.settings),
              ),
            ),
            NavigatorMapWidgetParent()
          ],
        ),
      ),
    );
  }
}

class NavigatorMapWidgetParent extends StatelessWidget {
  const NavigatorMapWidgetParent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        NavigatorMapWidget1(),
        NavigatorMapWidget2(),
        NavigatorMapWidget3(),
        NavigatorMapWidget4(),
      ],
    );
  }
}
