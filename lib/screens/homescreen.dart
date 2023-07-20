import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weatherapp/screens/searchscreen.dart';

import '../provider/weather_provider.dart';
import '../widgets/widget_OF_text.dart';

class homeScreen extends StatefulWidget {
  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  void updateUI() {
    setState(() {});
  }
  @override
  Widget build(BuildContext context) {
    var weatherdata=  Provider.of<weatherProvider>(context).WeatherData;

    return Scaffold(
      backgroundColor: Colors.deepPurple.withOpacity(0.6),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.deepPurple.withOpacity(0.6),
        title: const text_style(
          text: 'Weather App',
          size: 32,
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) {
                          return  searchScreen(
                            updateUI: updateUI,
                          );
                        }


                    ));
              },
              icon: const Icon(
                Icons.search,
                size: 32,
              ))
        ],
      ),
      body:  weatherdata  == null
          ? const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  text_style(
                    text: 'There is no weather  starting search now ',
                    size: 28,
                  ),
                ],
              ),
            )
          : Container(
              child:  Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Spacer(
                    flex: 3,
                  ),
                  text_style(
                    text: Provider.of<weatherProvider>(context).cityName ?? '' ,
                    size: 32,
                  ),
                  text_style(
                    text: 'Update : ${weatherdata.date.toString()}',
                    size: 22,
                  ),
                  Spacer(),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                     Image.asset(weatherdata.getImage()),
                      text_style(
                        text:  '${weatherdata.temp.toInt().toString()}',
                        size: 32,
                      ),
                      Column(
                        children: [
                          text_style(
                            text: 'MaxTemp : ${weatherdata.Maxtemp.toInt()}',
                            size: 22,
                          ),
                          text_style(
                            text:  'MinTemp : ${weatherdata.Mintemp.toInt()}' ,
                            size: 22,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Spacer(),
                  text_style(
                    text: weatherdata.weatherStateName ,
                    size: 32,
                  ),
                  Spacer(
                    flex: 5,
                  )
                ],
              ),
            ),
    );
  }
}

