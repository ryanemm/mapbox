import "package:flutter/material.dart";
import 'package:mapbox/src/blocs/application_bloc.dart';
import "package:provider/provider.dart";

class SearchBar extends StatefulWidget {
  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    final applicationBloc = Provider.of<ApplicationBloc>(context);
    return Container(
      child: Container(
        height: 50,
        padding: EdgeInsets.all(10),
        width: screenSize.width * 0.9,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black54,
              offset: Offset(5, 5),
              blurRadius: 5,
            ),
          ],
        ),
        child: TextField(
          decoration: InputDecoration(
            hintText: "Where are you going?",
            suffixIcon: Icon(Icons.search),
          ),
          onChanged: (value) => applicationBloc.searchPlaces(value),
        ),
      ),
    );
  }
}
