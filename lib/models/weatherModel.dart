import 'package:flutter/material.dart';

class WeatherModel {
  late final String date;
  late final double temp;
  late final double Maxtemp;
  late final double Mintemp;
  late final String weatherStateName;
  late final  icon;
  WeatherModel(
      {required this.date,
      required this.Maxtemp,
      required this.temp,
      required this.Mintemp,
      required this.weatherStateName,
      required this.icon});

  //make constructor to build object name is fromjson
//named constructor
//factory return object,factory constructor solve problem of nullable  ? in variables of model
  factory WeatherModel.fromJson(dynamic data) {
    var jsonData = data['forecast']['forecastday'][0]['day'];
//print(jsonData);
    return WeatherModel(
        date: data['location']['localtime'],
        Maxtemp: jsonData['maxtemp_c'],
        temp: jsonData['avgtemp_c'],
        Mintemp: jsonData['mintemp_c'],
        weatherStateName: jsonData['condition']['text'],
        icon: jsonData['condition']['icon']);
  }

@override
  String toString(){

    return 'date=$date  temp=$temp  maxtemp=$Maxtemp    MINtEP=$Mintemp WEATHERnAME=$weatherStateName ICON=$icon';
}
}
