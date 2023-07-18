import 'package:flutter/material.dart';

import '../constants/constants.dart';

class text_style extends StatelessWidget {
  const text_style({super.key, required this.text, required this.size});

  final String text;
final double size;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:  TextStyle(color: kcolor, fontSize: size,fontFamily: 'Pacifico'),
    );
  }
}
