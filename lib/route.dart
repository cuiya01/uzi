import 'package:flutter/material.dart';
import 'package:uzi/CarControPage.dart';
import 'package:uzi/CarLocationPage.dart';
import 'package:uzi/CarPage.dart';
import 'package:uzi/CarTemperaturePage.dart';
import 'package:uzi/CarUpgradePage.dart';
import 'package:uzi/EditPorfilePage.dart';
import 'package:uzi/GoogleMapPage.dart';
import 'package:uzi/HomePage.dart';
import 'package:uzi/LoginPage.dart';
import 'package:uzi/NotificationPage.dart';
import 'package:uzi/PersonalInformationPage.dart';
import 'package:uzi/MapPage.dart';
import 'package:uzi/SettingPage.dart';


final routes = {
  '/LoginPage': (context, {arguments}) =>LoginPage(arguments: arguments), //LOGIN
  '/HomePage': (context, {arguments}) =>HomePage(arguments: arguments), //TAP
  "/MapPage": (context, {arguments}) =>MapPage(arguments: arguments), //MAP
  '/CarPage': (context, {arguments}) =>CarPage(arguments: arguments), //CAR
  '/GoogleMapPage': (context, {arguments}) =>GoogleMapPage(arguments: arguments), // GOOGLEMAP

  '/PersonalInformationPage': (context, {arguments}) =>PersonalInformationPage(arguments: arguments), // PERSONAINFORMATION
  '/NotificationPage': (context, {arguments}) =>NotificationPage(arguments: arguments), // NOTIFICATION

  '/CarUpgradePage': (context, {arguments}) =>CarUpgradePage(arguments: arguments), // CAR
  '/CarTemperaturePage': (context, {arguments}) =>CarTemperaturePage(arguments: arguments), // CAR TEMPERATURE
  '/CarControPage': (context, {arguments}) =>CarControPage(arguments: arguments), // CAR CONTROL
  '/CarLocationPage': (context, {arguments}) =>CarLocationPage(arguments: arguments),//CAR LOCATION

  '/SettingPage': (context, {arguments}) =>SettingPage(arguments: arguments), //SETTINGS
  '/EditPorfilePage': (context, {arguments}) =>EditPorfilePage(arguments: arguments), //EDIT
};

// ignore: top_level_function_literal_block, missing_return
var onGenerateRoute = (RouteSettings settings){
  final String? name = settings.name;

  final Function? pageContentBuilder = routes[name];

  if (settings.arguments != null) {
    final Route route = MaterialPageRoute(builder: (context) => pageContentBuilder!(context, arguments: settings.arguments),
    );
    return route;
  } else {
    final Route route = MaterialPageRoute(builder: (context) => pageContentBuilder!(context));
    return route;
  }
};