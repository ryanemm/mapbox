import "package:mapbox/src/models/location.dart";

class Geometry {
  final Location location;

  Geometry({this.location});

  factory Geometry.fromJson(Map<dynamic, dynamic> parsedJson) {
    return Geometry(
      location: Location.fromjson(parsedJson["location"]),
    );
  }
}
