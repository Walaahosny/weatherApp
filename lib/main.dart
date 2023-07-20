import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weatherapp/provider/weather_provider.dart';
import 'package:weatherapp/screens/homescreen.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (BuildContext context) {
        return weatherProvider();
      },
      child:  MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WEATHER APP',
      theme: ThemeData(
          primarySwatch: Provider.of<weatherProvider>(context).WeatherData ==
                  null
              ? Colors.green
              : Provider.of<weatherProvider>(context).WeatherData!.getColor()),
      home: homeScreen(),
    );
  }
}
