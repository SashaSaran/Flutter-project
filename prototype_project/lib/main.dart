import 'package:flutter/material.dart';
import 'SearchButton.dart';
import 'SearchPage.dart';
import 'MapButton.dart';
import 'MapScreen.dart';


void main() {
  runApp(new MaterialApp(
    home: new HomePage(),
    routes: <String, WidgetBuilder> {
      // Home page already defined as "/" route
      "/Map": (BuildContext context) => new MapScreen(),
      "/SearchPage": (BuildContext context) => new SearchPage()
    }
  ));
}

class HomePage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(title: new Text("Home"), backgroundColor: Colors.black),
        body: new Container(
          child: new Center(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                SearchButton(),
                MapButton()

              ],
            ),
          )
        )
      );
    
  }
}







