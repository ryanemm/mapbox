import "package:flutter/material.dart";
import 'dart:async';
import 'package:mapbox/src/models/place_search.dart';
import "package:mapbox/src/services/places_service.dart";
import "package:mapbox/src/services/geolocator_service.dart";
import "package:geolocator/geolocator.dart";

class ApplicationBloc with ChangeNotifier {
  final geolocatorService = GeolocatorService();
  final placesService = PlacesService();

  //variables
  Position currentLocation;
  List<PlaceSearch> searchResults;

  ApplicationBloc() {
    setCurrentLocation();
  }

  setCurrentLocation() async {
    currentLocation = await geolocatorService.getCurrentLocation();
    notifyListeners();
  }

  searchPlaces(String searchTerm) async {
    searchResults = await placesService.getAutocomplete(searchTerm);
    notifyListeners();
  }
}
