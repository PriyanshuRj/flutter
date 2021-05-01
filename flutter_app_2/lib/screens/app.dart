import 'package:flutter/material.dart';
import 'package:flutter_app_2/screens/locations/locations.dart';
import 'location_details/location_details.dart';
import 'style.dart';
const Locationsroute = '/';
const LocationsDetailroute = '/location_detail';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: _routes(),
      

      theme:_theme(),
      
    );
  }
  RouteFactory _routes() {
    return (settings) {
      final Map<String,dynamic> arguments = settings.arguments;
      Widget screen;
      switch (settings.name) {
        case Locationsroute:
          screen = Local();
          break;
        case LocationsDetailroute:
          screen = Location(arguments['id' ]);
          break;
        default:
          return null;



      }
      return MaterialPageRoute(builder: (BuildContext context) => screen);
      

    };

  }
  ThemeData _theme() {
    return ThemeData(
        appBarTheme: AppBarTheme(
          textTheme: TextTheme(
            title: AppBarTextStyle),
      ),
      textTheme: TextTheme(
        title: TitleTextStyle,
        body1: Body1TextStyle,
      )
      );
  }
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

