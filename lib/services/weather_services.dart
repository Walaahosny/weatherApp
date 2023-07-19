import 'package:http/http.dart' as http;

class weatherServices {
  void getWeather({required String cityName}) {
    Uri url = Uri.parse(
        'http://api.weatherapi.com/v1/current.json?key=f68f720c766c44bb8b400412231907&q=London&aqi=no');
    http.get(url);
  }
}
