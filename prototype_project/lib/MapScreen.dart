import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class MapScreen extends StatefulWidget {
  @override
  MapScreenState createState() => MapScreenState();
}

class MapScreenState extends State<MapScreen> {

  final Map<String, Marker> mapMarkers = {};
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
        markers: mapMarkers.values.toSet(),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: getCurrentLocation,
        tooltip: "Find current location",
        child: Icon(Icons.map)
      ),
    );
  }

  void getCurrentLocation() async {
    var currLocation = await Location().getLocation();
    this.setState(() {
      mapMarkers.clear();
      final currMarker = Marker(
        markerId: MarkerId("currLoc"),
        position: LatLng(currLocation.latitude, currLocation.longitude),
        infoWindow: InfoWindow(
          title: "You are here"
        ),
      );
      mapMarkers["Current Location"] = currMarker;
      mapCon.moveCamera(CameraUpdate.newLatLng(LatLng(currLocation.latitude, currLocation.longitude)));
    });

  }
}