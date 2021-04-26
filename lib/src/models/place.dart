import "package:mapbox/src/models/geometry.dart";

class Place {
  final Geometry geometry;
  final String name;
  final String address;

  Place({this.geometry, this.address, this.name});

  factory Place.fromJson(Map<String, dynamic> parsedJson) {
    return Place(
      geometry: Geometry.fromJson(parsedJson["geometry"]),
      name: parsedJson['name'],
      address: parsedJson["formatted_address"],
    );
  }

  //https://maps.googleapis.com/maps/api/place/details/json?place_id=ChIJN1t_tDeuEmsRUsoyG83frY4&fields=name,rating,formatted_address,geometry&key=AIzaSyBxMJ7VtHJYM0YR5GRXI8ZawC4eGwIimXo
}
