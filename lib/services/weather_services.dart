import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/weatherModel.dart';

class weatherServices {
  String baseUrl = 'http://api.weatherapi.com/v1';
  String apiKey = 'f68f720c766c44bb8b400412231907';
  Future<WeatherModel?> getWeather({required String cityName}) async {
    WeatherModel? weather;
    try {
      //make request
      Uri url =
          Uri.parse('$baseUrl/forecast.json?key=$apiKey&q=$cityName&day=7');
      //response request,recive data in object response
      http.Response response = await http.get(url);
      //لازم الاسترينج يتحول لجيسون
      Map<String, dynamic> data = jsonDecode(response.body);
      //الداتا ال بيجيبها من النت لازم اخزنها ع هيئه اوبجكت
      // // print(data);
      //  String date=data['location']['localtime'];
      //  var current=data['current']['temp_c'];
      //  var condition=data['current']['condition']['text'];
      //  print(date);
      //  print(current);
      //  print(condition);

      weather = WeatherModel.fromJson(data);
    } catch (e) {
      print(e);
    }
    return weather;
  }
}
