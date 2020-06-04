import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';


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
        body: Column(
          children: <Widget>[ButtonWidget(), SimonButton()],
        ),
      ),
    );
  }
}

class ButtonWidget extends StatefulWidget {
  @override 
  ButtonWidgetState createState() => ButtonWidgetState();
}

class SimonButton extends StatefulWidget {
  @override 
  SimonButtonState createState() => SimonButtonState();
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

class SimonButtonState extends State<SimonButton> {
  MaterialColor buttonColour = Colors.red;

  @override 
  Widget build(BuildContext context){
    return FloatingActionButton(
      backgroundColor: buttonColour,
      onPressed: (){
        Navigator.push(context,
        MaterialPageRoute(builder: (context) => MapScreen()));
      },
    );
  }
}

class MapScreen extends StatefulWidget {
  @override
  MapScreenState createState() => MapScreenState();
}

class MapScreenState extends State<MapScreen> {

  static final CameraPosition initialLocation = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.476,
  );
  GoogleMapController mapCon;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Map'),
      ),
      body: GoogleMap(
        mapType: MapType.hybrid,
        initialCameraPosition: initialLocation,
        onMapCreated: (GoogleMapController controller) {
          mapCon = controller;
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: (){
          Navigator.pop(context);
        }
      ),
    );
  }
}




