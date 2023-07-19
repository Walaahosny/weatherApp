import 'package:flutter/material.dart';
import 'package:weatherapp/screens/searchscreen.dart';

import '../widgets/widget_OF_text.dart';

class homeScreen extends StatelessWidget {
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => searchScreen()));
              },
              icon: const Icon(
                Icons.search,
                size: 32,
              ))
        ],
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            text_style(
              text: 'There is no weather  starting search now ',
              size: 28,
            ),
          ],
        ),
      ),
    );
  }
}
