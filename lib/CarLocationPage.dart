import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class CarLocationPage extends StatefulWidget {
  final Map? arguments;
  const CarLocationPage({Key? key, this.arguments}) : super(key: key);

  @override
  createState() => _CarLocationPageState();
}

class _CarLocationPageState extends State<CarLocationPage> {
  final Completer<GoogleMapController> _controller = Completer();
  GoogleMapController? mapController;
  final LatLng _lastMapPosition = _center;
  static const LatLng _center = LatLng(51.524739411238734, -0.1341044748135961);

  final Set<Marker> _markers = {};

  BitmapDescriptor? myIcon;

  @override
  void initState() {
    BitmapDescriptor.fromAssetImage(
        ImageConfiguration(size: Size(40, 40)), 'assets/tslIcon.png')
        .then((onValue) {
      myIcon = onValue;
    });
  }

  void addMarker(LatLng mLatLng, String mTitle, String mDescription){
    _markers.add(Marker(
      // This marker id can be anything that uniquely identifies each marker.
      markerId: MarkerId((mTitle + "_" + _markers.length.toString()).toString()),
      position: mLatLng,
      infoWindow: InfoWindow(
        title: mTitle,
        snippet: mDescription,
      ),
      icon: myIcon!,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Location"),
      ),
      body: GoogleMap(
        markers: _markers,
        // onCameraMove: _onCameraMove,
        mapType: MapType.normal,
        initialCameraPosition: const CameraPosition(
          target: _center,
          zoom: 30.0,
        ),
        onMapCreated: (GoogleMapController controller) {
          mapController = controller;
          _controller.complete(controller);
          setState(() {
            _markers.clear();
            addMarker(_center, "Car", "Car");
          });
        },
      ),
    );
  }

  // void check(CameraUpdate u, GoogleMapController c) async {
  //   c.animateCamera(u);
  //   mapController!.animateCamera(u);
  //   LatLngBounds l1=await c.getVisibleRegion();
  //   LatLngBounds l2=await c.getVisibleRegion();
  //   print(l1.toString());
  //   print(l2.toString());
  //   if(l1.southwest.latitude==-90 ||l2.southwest.latitude==-90)
  //     check(u, c);
  // }
  //
  //
  // void _onCameraMove(CameraPosition position) {
  //   _lastMapPosition = position.target;
  // }

}
