import 'package:flutter/material.dart';

class MapButton extends StatefulWidget {
  @override 
  MapButtonState createState() => MapButtonState();
}

class MapButtonState extends State<MapButton> {
  MaterialColor buttonColour = Colors.red;

  @override 
  Widget build(BuildContext context){
    return FloatingActionButton(
      backgroundColor: buttonColour,
      onPressed: (){
        Navigator.pushNamed(context, "/Map");
      },
    );
  }
}