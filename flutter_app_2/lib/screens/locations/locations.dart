import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_app_2/screens/location_details/location_details.dart';
import '../app.dart';
import '../../models/location.dart';
class Local extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    final locations = Locations.fetchAll();
    
    void _onLocationTap(BuildContext context,int locationID) {
      Navigator.pushNamed(context,LocationsDetailroute,arguments: {"id": locationID});

    }
    return Scaffold(
      appBar: AppBar(title: Text('Location'),
      centerTitle: true),
      body: ListView(children: locations.map((location) => GestureDetector(
        child: Text(location.name),
        onTap: () => _onLocationTap(context,location.id)
        )).toList()
      
      )
      
    );
    

  }
}