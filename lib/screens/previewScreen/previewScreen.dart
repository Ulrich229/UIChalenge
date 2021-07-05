import 'package:flutter/material.dart';

import '../../colors.dart';
import './widgets/topMenu.dart';
import './widgets/linkCard.dart';

class PreviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: deviceSize.width,
        height: deviceSize.height,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
              pink.withOpacity(0.3),
              pink.withOpacity(0.25),
              pink.withOpacity(0.20),
              pink.withOpacity(0.15),
              white,
              white,
            ])),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          TopMenu(),
          LinkCard(),
        ],
      ),
      ),
    );
  }
}
