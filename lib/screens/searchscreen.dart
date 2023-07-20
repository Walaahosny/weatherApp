import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weatherapp/models/weatherModel.dart';
import '../constants/constants.dart';
import '../provider/weather_provider.dart';
import '../services/weather_services.dart';
import '../widgets/widget_OF_text.dart';


class searchScreen extends StatelessWidget {
    String? cityName;
  searchScreen({super.key, required this.updateUI});
  VoidCallback? updateUI;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//backgroundColor: Provider.of<weatherProvider>(context).WeatherData==null?Colors.deepPurple:Provider.of<weatherProvider>(context).WeatherData!.getColor(),
      appBar: AppBar(
        elevation: 0,
        //backgroundColor: Provider.of<weatherProvider>(context).WeatherData==null?Colors.deepPurple:Provider.of<weatherProvider>(context).WeatherData!.getColor(),
        title: const text_style(
          text: 'Search',
          size: 32,
        ),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 18.0),
          child: TextField(
            //takes any value or character the user write
            onChanged: (da) {cityName = da;},
            //used to takes value from user
            onSubmitted: (data) async {
              cityName = data;
              weatherServices service = weatherServices();
              WeatherModel? Weather =
                  await service.getWeather(cityName: cityName!);
              Provider.of<weatherProvider>(context,listen: false).WeatherData = Weather;
              Provider.of<weatherProvider>(context,listen: false).cityName=cityName;
              //updateUI!();
              Navigator.pop(context);
              //without function of tostring return from print " Instance of 'WeatherModel'"
              //but if you use function of tostring print values you need
              print(Weather);
            },
            cursorColor: Colors.deepPurple,
            decoration:  InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white24, width: 3)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.deepPurple)),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                labelText: 'Search',
                labelStyle: TextStyle(color: kcolor),
                hintText: 'Enter City Name',
                hintStyle: TextStyle(color: kcolor),
                prefixIcon: IconButton(
                icon:  Icon(Icons.search),
                  color: kcolor,
                  onPressed: () async {

                  weatherServices service = weatherServices();
                  WeatherModel? Weather =
                      await service.getWeather(cityName: cityName!);
                  Provider.of<weatherProvider>(context,listen: false).WeatherData = Weather;
                  Provider.of<weatherProvider>(context,listen: false).cityName=cityName;
                  //updateUI!();
                  Navigator.pop(context);

                },
                ),
                border: OutlineInputBorder()),
          ),
        ),
      ),
    );
  }
}
