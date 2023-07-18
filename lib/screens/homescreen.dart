import 'package:flutter/material.dart';
import 'package:weatherapp/screens/searchscreen.dart';

import '../widgets/widget_OF_text.dart';
import 'package:flutter_emoji/flutter_emoji.dart';

class homeScreen extends StatelessWidget {
  final parser = EmojiParser();
  var search = Emoji('search', '');
  var heart  = Emoji('heart', '');
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
      actions: [IconButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>searchScreen()));
      }, icon: Icon(Icons.search,size: 32,))],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            text_style(
              text: parser.emojify(
                  'There is no weather  starting search now '),
              size: 28,
            ),
          ],
        ),
      ),
    );
  }
}
