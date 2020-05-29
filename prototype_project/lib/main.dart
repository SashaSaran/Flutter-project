import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    bool isButtonPressed = false;
    return MaterialApp(
      title: 'Welcome TO Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome To Flutter'),
          ),
        body: ButtonWidgetState(),
      ),
    );
  }
}

class ButtonWidget extends StatefulWidget {
  @override 
  ButtonWidgetState createState() => ButtonWidgetState();
}


class ButtonWidgetState extends State<ButtonWidget> {
  bool isButtonPressed = false;

  @override 
  Widget build(BuildContext context){
    return RaisedButton(
      color: isButtonPressed ? Colors.blue[100] : Colors.blue[50],
      onPressed: (){
        setState(() {
          isButtonPressed = true;
        });
      },
      child: Text('Sanjar Button'),
    );
  }
}




