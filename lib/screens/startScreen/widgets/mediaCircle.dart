import 'package:flutter/material.dart';

import '../.././../colors.dart';

class MediaCircle extends StatelessWidget {
  final String logoPath;
  MediaCircle({@required this.logoPath});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        color: pink,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: grey.withOpacity(0.5),
            offset: Offset(-2, 2.5)
          )
        ],
        border: Border.all(
          color: white,
          width: 3
        ),
      ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(logoPath, fit: BoxFit.contain, color: white,),
        )
    );
  }
}