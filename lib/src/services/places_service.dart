import "package:http/http.dart" as http;
import "dart:convert" as convert;
import "package:mapbox/src/models/place_search.dart";
import "package:mapbox/src/models/place.dart";

class PlacesService {
  final key = "AIzaSyBxMJ7VtHJYM0YR5GRXI8ZawC4eGwIimXo";

  Future<List<PlaceSearch>> getAutocomplete(String search) async {
    var url =
        'https://maps.googleapis.com/maps/api/place/autocomplete/json?input=$search&components=country:za&key=$key';
    var response = await http.get(Uri.parse(url));
    var json = convert.jsonDecode(response.body);
    var jsonResults = json['predictions'] as List;
    return jsonResults.map((place) => PlaceSearch.fromJson(place)).toList();
  }

  Future<Place> getPlace(String placeId) async {
    var url =
        "https://maps.googleapis.com/maps/api/place/details/json?place_id=$placeId&fields=name,rating,formatted_address,geometry&key=$key";
    var response = await http.get(Uri.parse(url));
    var json = convert.jsonDecode(response.body);
    var jsonResult = json["result"] as Map<String, dynamic>;
    return Place.fromJson(jsonResult);
  }
}
