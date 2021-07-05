import 'package:flutter/material.dart';

import '../../../colors.dart';

class TextZone extends StatelessWidget {
  final String text;
  TextZone({@required this.text});
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
          fontSize: deviceSize.height / 28,
          color: darkBlue2,
          fontWeight: FontWeight.values[6]),
    );
  }
}