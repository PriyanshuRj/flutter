import 'package:flutter/material.dart';
import 'text_section.dart';
class Location extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.grey[700],
        title: Text("Location",
        style: TextStyle(
          color: Colors.amberAccent,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        
        children: [
        
        TextSection(Colors.amberAccent),
        TextSection(Colors.blue[800]),

      ],),
      
      
    );
  }
}