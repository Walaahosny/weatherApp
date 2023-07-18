import 'package:flutter/material.dart';

import '../constants/constants.dart';
import '../widgets/widget_OF_text.dart';

class searchScreen extends StatelessWidget {
  const searchScreen({super.key});

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
      body: const Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 18.0),
          child: TextField(
            cursorColor: Colors.deepPurple,
            decoration: InputDecoration(
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
