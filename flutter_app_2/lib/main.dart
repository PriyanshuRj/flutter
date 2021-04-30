import 'package:flutter/material.dart';
import 'screens/location_details/location_details.dart';

void main() {
  runApp(MaterialApp(
    home: Location(),
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
          appBar: AppBar(
            backgroundColor: Colors.grey[800],
            title: Text(
              "First App",
              style: TextStyle(color: Colors.amber,
              fontSize: 16,
              fontWeight: FontWeight.bold,
              ),

            ),
            centerTitle: true,
          ),
          body: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            Container(
              padding: EdgeInsets.all(5),
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                
                color: Colors.amber,
              ),
              child: Text("helo every one"),
              
              ),
              Container(
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.amber,
              ),
              child: Text("helo every one"),
              
              ),
              Container(
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.amber,
              ),
              child: Text("helo every one"),
              
              ),
              Container(
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.amber,
              ),
              child: Text("helo every one"),
              
              ),
            
          ],),
    );
  }
}

class Boxdecoration {
}