import 'package:flutter/material.dart';

class WeatherModel {
  late String date;
  late double temp;
  late double Maxtemp;
  late double Mintemp;
  late String weatherStateName;

  WeatherModel({
    required this.date,
    required this.Maxtemp,
    required this.temp,
    required this.Mintemp,
    required this.weatherStateName,
  });

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
    );
  }

  @override
  String toString() {
    return 'date=$date  temp=$temp  maxtemp=$Maxtemp    MINtEP=$Mintemp WEATHERnAME=$weatherStateName  ';
  }
  MaterialColor getColor() {
    if (weatherStateName == 'Clear' ||weatherStateName == 'Sunny' ) {
      return Colors.amber;
    } else if (weatherStateName == 'Snow' ||
        weatherStateName == 'Sleet' ||
        weatherStateName == 'Light Rain' ||
        weatherStateName == 'Heavy Rain') {
      return Colors.cyan;
    }

    else if (weatherStateName == 'Cloudy' ||
        weatherStateName == 'Light Cloud' ||
        weatherStateName == 'Light Cloud'||
        weatherStateName == 'Partly cloudy'
    ) {
      return Colors.grey;
    }

    else if (weatherStateName == 'Thunderstorm' ||
        weatherStateName == 'Thunder') {
      return Colors.yellow;
    }
    return Colors.red;

  }

  String getImage() {
    if (weatherStateName == 'Clear' ) {
      return 'images/all/clear.png';
    } else if (weatherStateName == 'Snow' ||
        weatherStateName == 'Sleet' ||
        weatherStateName == 'Light Rain' ||
        weatherStateName == 'Heavy Rain') {
      return 'images/all/rainy.png';
    }

    else if (weatherStateName == 'Cloudy' ||
        weatherStateName == 'Light Cloud' ||
        weatherStateName == 'Light Cloud'
      ) {
      return 'images/all/cloudy.png';
    }

    else if (weatherStateName == 'Thunderstorm' ||
        weatherStateName == 'Thunder'

    ) {
      return 'images/all/thunderstorm.png';
    }
    return 'images/all/cloudy.png';
  }
}
