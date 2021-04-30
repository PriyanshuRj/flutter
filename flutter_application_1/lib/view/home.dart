import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Moon Stack"),
        
        centerTitle: true,
        backgroundColor: Colors.green[700],

        
      ),
      body: Center(
        
        child :Text(
          "first app",
          style: TextStyle(
            color: Colors.blue[800],
            fontSize: 25,
            fontWeight: FontWeight.bold,
            fontFamily: 'Caveat',
          ) ,)
          
          ),
      
      floatingActionButton: FloatingActionButton(
        child: Text("Done"),

        elevation: 10,
        onPressed: () {},
        backgroundColor: Colors.green[700],
        
      ),

      
    );
  }
}