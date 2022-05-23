import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:uzi/MapPage.dart';

class GoogleMapPage extends StatefulWidget {
  final Map? arguments;
  const GoogleMapPage({Key? key, this.arguments}) : super(key: key);

  @override
  createState() => _GoogleMapPageState();
}

class _GoogleMapPageState extends State<GoogleMapPage> {
  // late final GoogleMapController _controller;

  final Completer<GoogleMapController> _controller = Completer();
  mModel? _mapData;

  final Set<Marker> _markers = {};//51.52272677273468, -0.13706282120690583

  static const CameraPosition _me = CameraPosition(
      target:  LatLng(51.52355033466605, -0.1373339158012827),//51.52273344810145, -0.13705209199631382
      // tilt: 50,
      zoom: 15);


  void YY(){
    try{
      _mapData = widget.arguments!["data"];
      _destination = Marker(
        // This marker id can be anything that uniquely identifies each marker.
        markerId: MarkerId((_mapData!.addressName! + "_" + _markers.length.toString()).toString()),
        position: _mapData!.data!,
        infoWindow: InfoWindow(
          title: _mapData!.addressName!,
          snippet: _mapData!.addressName!,
        ),
        icon: BitmapDescriptor.defaultMarker,
      );
      _markers.add(_destination!);
    }catch(E){

    }

    _origin = Marker(
      // This marker id can be anything that uniquely identifies each marker.
      markerId: MarkerId(("home" + "_" + _markers.length.toString()).toString()),
      position: _me.target,
      infoWindow: const InfoWindow(
        title: "home",
        snippet: "home",
      ),
      icon: BitmapDescriptor.defaultMarker,
    );
    _markers.add(_origin!);

    setState((){});
  }

  @override
  void initState() {
    super.initState();
    YY();
  }

  @override
  void dispose() {
    // _controller.dispose();
    super.dispose();
  }

  Marker? _origin;
  Marker? _destination;
  Directions? _info;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GoogleMap"),
        actions: [
          TextButton(
            onPressed: () async{
              final directions = await DirectionsRepository().getDirections(origin: _origin!.position, destination: _destination!.position);
              setState(() => _info = directions);
            },
            style: TextButton.styleFrom(
              primary: Colors.green,
              textStyle: const TextStyle(fontWeight: FontWeight.w600),
            ),
            child: const Text('Navigation',style: TextStyle(color: Colors.white),),
          )
        ],
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          GoogleMap(
            myLocationButtonEnabled: false,
            zoomControlsEnabled: false,
            initialCameraPosition: _me,
            onMapCreated: (controller){
              _controller.complete(controller);
            },
            markers: _markers,
            polylines: {
              _info != null ? Polyline(
                polylineId: const PolylineId('overview_polyline'),
                color: Colors.red,
                width: 5,
                points: _info!.polylinePoints!.map((e) => LatLng(e.latitude, e.longitude)).toList(),
              ) : const Polyline(
                polylineId: PolylineId('overview_polyline'),
                color: Colors.transparent,
                width: 5,
                points: [],
              )
            },
            onLongPress: _addMarker,
          ),
          _info != null ?
          Positioned(
            top: 20.0,
            child: Container(
              padding: const EdgeInsets.symmetric(
                vertical: 6.0,
                horizontal: 12.0,
              ),
              decoration: BoxDecoration(
                color: Colors.yellowAccent,
                borderRadius: BorderRadius.circular(20.0),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    offset: Offset(0, 2),
                    blurRadius: 6.0,
                  )
                ],
              ),
              child: Text(
                '${_info!.totalDistance}, ${_info!.totalDuration}',
                style: const TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ) :
          const SizedBox(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async{
          final GoogleMapController controller = await _controller.future;
          controller.animateCamera(CameraUpdate.newCameraPosition( CameraPosition(
              target: _mapData!.data!,
              // tilt: 50,
              zoom: 15)));
        },
        child: const Icon(Icons.center_focus_strong),
      ),
    );
  }

  void _addMarker(LatLng pos) async {
      final directions = await DirectionsRepository().getDirections(origin: _origin!.position, destination: pos);
      setState(() => _info = directions);
    }
  }


class Directions {
  final LatLngBounds? bounds;
  final List<PointLatLng>? polylinePoints;
  final String? totalDistance;
  final String? totalDuration;

  const Directions({
    @required this.bounds,
    @required this.polylinePoints,
    @required this.totalDistance,
    @required this.totalDuration,
  });

  factory Directions.fromMap(Map<String, dynamic> map) {
    // Check if route is not available
    if ((map['routes'] as List).isEmpty) return null!;

    // Get route information
    final data = Map<String, dynamic>.from(map['routes'][0]);

    // Bounds
    final northeast = data['bounds']['northeast'];
    final southwest = data['bounds']['southwest'];
    final bounds = LatLngBounds(
      northeast: LatLng(northeast['lat'], northeast['lng']),
      southwest: LatLng(southwest['lat'], southwest['lng']),
    );

    // Distance & Duration
    String distance = '';
    String duration = '';
    if ((data['legs'] as List).isNotEmpty) {
      final leg = data['legs'][0];
      distance = leg['distance']['text'];
      duration = leg['duration']['text'];
    }

    return Directions(
      bounds: bounds,
      polylinePoints:
      PolylinePoints().decodePolyline(data['overview_polyline']['points']),
      totalDistance: distance,
      totalDuration: duration,
    );
  }
}

class DirectionsRepository {
  static const String _baseUrl =
      'https://maps.googleapis.com/maps/api/directions/json?';

  final Dio? _dio;


  DirectionsRepository({Dio? dio}) : _dio = dio ?? Dio();

  Future<Directions> getDirections({
    @required LatLng? origin,
    @required LatLng? destination,
  }) async {
    final response = await _dio!.get(
      _baseUrl,
      queryParameters: {
        'origin': '${origin!.latitude},${origin.longitude}',
        'destination': '${destination!.latitude},${destination.longitude}',
        'key': "AIzaSyDMxJ_auXT3VT-_yiIHv7NsqCbM8eVSSUg",
      },
    );


    // Check if response is successful
    if (response.statusCode == 200) {
      return Directions.fromMap(response.data);
    }


    return response.data;
  }
}