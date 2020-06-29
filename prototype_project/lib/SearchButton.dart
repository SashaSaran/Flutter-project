import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchButton extends StatefulWidget {
  @override
  SearchButtonState createState() => SearchButtonState();
}

class SearchButtonState extends State<SearchButton> {
  bool isButtonPressed = false;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
        width: 0.75 * screenWidth,
        height: 0.07 * screenHeight,
        margin: EdgeInsets.only(bottom: 10.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 4,
              offset: Offset(0, 2), // changes position of shadow
            ),
          ],
        ),
        child: TextField(
          decoration: InputDecoration(
              border: InputBorder.none, prefixIcon: Icon(Icons.search)),
          onTap: () {
            // setState(() {
            //   isButtonPressed = !isButtonPressed;
            // });
            Navigator.pushNamed(context, "/SearchPage");
          },
        ));
  }
}
