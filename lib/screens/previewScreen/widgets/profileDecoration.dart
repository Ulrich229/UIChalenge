import 'package:flutter/material.dart';

import '../../../colors.dart';


class ProfileDecoration extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      width: 110,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
        color: grey.withOpacity(0.3),
        width: 1,
        )
      ),
      child: Container(
      alignment: Alignment.center,
      height:95,
      width: 95,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
        color: grey.withOpacity(0.3),
        width: 3,
        )
      ),
      child: Container(
      alignment: Alignment.center,
        height: 80,
        width: 80,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
        color: grey.withOpacity(0.3),
        width: 1,
        )
        ),
        child: Container(
        height: 65,
        width: 65,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(image: AssetImage('assets/images/dummyWoomanProfile.png'))),
      ),
      ),
    ),
    );
  }
}