import 'package:flutter/material.dart';
import 'package:uzi/LoginPage.dart';
import 'package:uzi/route.dart';

void main() {
  runApp(const MyApp());
}

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      initialRoute: '/LoginPage',
      onGenerateRoute: onGenerateRoute,
      title: 'Flutter Demo',
      theme: ThemeData(
        cardColor:Colors.transparent,//为了弹窗
        primarySwatch: Colors.blue,
      ),
      home: const LoginPage(),
    );
  }
}
