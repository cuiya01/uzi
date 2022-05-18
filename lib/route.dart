import 'package:flutter/material.dart';
import 'package:uzi/CarControPage.dart';
import 'package:uzi/CarLocationPage.dart';
import 'package:uzi/CarTemperaturePage.dart';
import 'package:uzi/CarUpgradePage.dart';
import 'package:uzi/GoogleMapPage.dart';
import 'package:uzi/HomePage.dart';
import 'package:uzi/LoginPage.dart';
import 'package:uzi/NotificationPage.dart';
import 'package:uzi/PersonalInformationPage.dart';
import 'package:uzi/MapPage.dart';
import 'package:uzi/SettingPage.dart';


final routes = {
  '/LoginPage': (context, {arguments}) =>LoginPage(arguments: arguments), //登陆页面
  '/HomePage': (context, {arguments}) =>HomePage(arguments: arguments), //tab首页 与 左滑个人页面
  "/MapPage": (context, {arguments}) =>MapPage(arguments: arguments), //地图页
  '/GoogleMapPage': (context, {arguments}) =>GoogleMapPage(arguments: arguments), // 谷歌地图页

  '/PersonalInformationPage': (context, {arguments}) =>PersonalInformationPage(arguments: arguments), // 个人信息页
  '/NotificationPage': (context, {arguments}) =>NotificationPage(arguments: arguments), // 通知页

  '/CarUpgradePage': (context, {arguments}) =>CarUpgradePage(arguments: arguments), // 汽车 更新页面
  '/CarTemperaturePage': (context, {arguments}) =>CarTemperaturePage(arguments: arguments), // 汽车 温度页面
  '/CarControPage': (context, {arguments}) =>CarControPage(arguments: arguments), // 汽车 控制页面
  '/CarLocationPage': (context, {arguments}) =>CarLocationPage(arguments: arguments),//汽车 位置

  '/SettingPage': (context, {arguments}) =>SettingPage(arguments: arguments), //设置页面
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