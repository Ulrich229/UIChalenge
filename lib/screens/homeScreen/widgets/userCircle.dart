import 'package:flutter/material.dart';

import '../../../colors.dart';

class UserCircle extends StatelessWidget {
  final String imagePath;
  UserCircle({@required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(0),
      margin: EdgeInsets.all(0),
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imagePath),
        ),
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: grey.withOpacity(0.5),
            offset: Offset(-2, 2.5)
          )
        ],
        border: Border.all(
          color: pink,
          width: 3
        ),
      ),
    );
  }
}