
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchButton extends StatefulWidget {
  @override 
  SearchButtonState createState() => SearchButtonState();
} 

class SearchButtonState extends State<SearchButton> {
  
  bool isButtonPressed = false;

  @override 
  Widget build(BuildContext context){
    return FlatButton(
      color: !isButtonPressed ? Colors.white : Colors.black,
      textColor: !isButtonPressed ? Colors.black : Colors.white,
      onPressed: () {
        // setState(() {
        //   isButtonPressed = !isButtonPressed;
        // });
        Navigator.pushNamed(context,"/SearchPage");
      },
      child: Text(
        "Search"
      )
    );
  }


}