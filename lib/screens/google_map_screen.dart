import "package:flutter/material.dart";
import "package:google_maps_flutter/google_maps_flutter.dart";

class GoogleMapScreen extends StatefulWidget {
  @override
  _GoogleMapScreenState createState() => _GoogleMapScreenState();
}

class _GoogleMapScreenState extends State<GoogleMapScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" Custom Map"),
      ),
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: LatLng(51.5014, 0.1419),
          zoom: 15,
        ),
      ),
    );
  }
}
