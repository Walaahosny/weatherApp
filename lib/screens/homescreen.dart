import 'package:flutter/material.dart';
import 'package:weatherapp/screens/searchscreen.dart';

import '../models/weatherModel.dart';
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
      body: WeatherData == null
          ? Center(
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
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Spacer(
                    flex: 3,
                  ),
                  text_style(
                    text: 'Cairo',
                    size: 32,
                  ),
                  text_style(
                    text: 'Update:2-3-2022',
                    size: 22,
                  ),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.sunny,
                        size: 60,
                      ),
                      text_style(
                        text: '30',
                        size: 32,
                      ),
                      Column(
                        children: [
                          text_style(
                            text: 'MaxTemp:30',
                            size: 22,
                          ),
                          text_style(
                            text: 'MinTemp:20',
                            size: 22,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Spacer(),
                  text_style(
                    text: 'Clear',
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

WeatherModel? WeatherData;
