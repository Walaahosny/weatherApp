import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weatherapp/provider/weather_provider.dart';
import 'package:weatherapp/screens/homescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return Provider(
      create: (BuildContext context) { return weatherProvider() ;},
      child: MaterialApp(
      debugShowCheckedModeBanner: false,
        title: 'WEATHER APP',

        home: homeScreen(),
      ),
    );
  }
}


