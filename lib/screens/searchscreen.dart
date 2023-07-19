import 'package:flutter/material.dart';

import '../constants/constants.dart';
import '../widgets/widget_OF_text.dart';

class searchScreen extends StatelessWidget {
late final String cityName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.withOpacity(0.6),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.deepPurple.withOpacity(0.6),
        title: const text_style(
          text: 'Search',
          size: 32,
        ),
      ),
      body:  Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 18.0),
          child: TextField(
            //takes any value or character the user write
            onChanged: (da){},
            //used to takes value from user
            onSubmitted: (data){
              cityName=data;
              print(cityName);},
            cursorColor: Colors.deepPurple,
            decoration: const InputDecoration(
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
                prefixIcon: Icon(
                  Icons.search,
                  color: kcolor,
                ),
                border: OutlineInputBorder()),
          ),
        ),
      ),
    );
  }
}
