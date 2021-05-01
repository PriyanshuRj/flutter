import 'package:flutter/material.dart';
import 'image_banner.dart';
import 'text_section.dart';
import '../../models/location.dart';
class Location extends StatelessWidget {
  final int _locationID;
  Location(this._locationID);
  @override
  Widget build(BuildContext context) {
    final location = Locations.fetchByID(_locationID);
    
    return Scaffold(
      
      backgroundColor: Colors.white10,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text(location.name,
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        
        children: [
          ImageBanner(location.imagePath),
          
      ]..addAll(textSections(location))),
      
      
    );
  }
  List<Widget>textSections(Locations location) {
    return location.facts.map((fact) => TextSection(fact.title, fact.text)).toList();
  }
}