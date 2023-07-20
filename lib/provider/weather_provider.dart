import 'package:flutter/cupertino.dart';
import 'package:weatherapp/models/weatherModel.dart';

class weatherProvider extends ChangeNotifier{
  WeatherModel ?_WeatherData;
  String ?cityName;
  set WeatherData(WeatherModel ? weather){
    _WeatherData=weather;
    notifyListeners();
  }
  WeatherModel ?get WeatherData=>_WeatherData;

}