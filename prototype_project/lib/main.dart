import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'SearchButton.dart';
import 'SearchPage.dart';
=======
import 'MapButton.dart';
import 'MapScreen.dart';
>>>>>>> f2e7ec48e8e7ff8a3943cbd17a35d0e70912ade5


void main() {
  runApp(new MaterialApp(
<<<<<<< HEAD
    home: new HomePage(),
    routes: <String, WidgetBuilder> {
      // Home page already defined as "/" route
      "/SearchPage": (BuildContext context) => new SearchPage()
    }
=======
    home: HomePage(),
    routes: <String, WidgetBuilder> {
      "/Map": (BuildContext context) => new MapScreen()
    },
>>>>>>> f2e7ec48e8e7ff8a3943cbd17a35d0e70912ade5
  ));
}

class HomePage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return Scaffold(
        appBar: new AppBar(title: new Text("Home"), backgroundColor: Colors.black),
=======
    bool isButtonPressed = false;
    return Scaffold(
      appBar: new AppBar(title: new Text("Home"), backgroundColor: Colors.black),
>>>>>>> f2e7ec48e8e7ff8a3943cbd17a35d0e70912ade5
        body: new Container(
          child: new Center(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
<<<<<<< HEAD
                SearchButton()
=======
                MapButton()
>>>>>>> f2e7ec48e8e7ff8a3943cbd17a35d0e70912ade5
              ],
            ),
          )
        )
<<<<<<< HEAD
      );
    
  }
}



=======
      );  
    );
  }
}

>>>>>>> f2e7ec48e8e7ff8a3943cbd17a35d0e70912ade5




