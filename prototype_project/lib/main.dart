import 'package:flutter/material.dart';
import 'MapButton.dart';
import 'MapScreen.dart';


void main() {
  runApp(new MaterialApp(
    home: HomePage(),
    routes: <String, WidgetBuilder> {
      "/Map": (BuildContext context) => new MapScreen()
    },
  ));
}

class HomePage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    bool isButtonPressed = false;
    return Scaffold(
      appBar: new AppBar(title: new Text("Home"), backgroundColor: Colors.black),
      body: new Container(
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              MapButton()
            ],
          ),
        )
      )
    );  
  }
}





