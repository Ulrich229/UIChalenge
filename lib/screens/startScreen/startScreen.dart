import 'package:flutter/material.dart';

import '../../colors.dart';
import './widgets/textBox.dart';
import './widgets/mediaCircle.dart';
import './widgets/arrowButton.dart';

class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
      height: deviceSize.height,
      width: deviceSize.width,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [pink.withOpacity(0.3), white])),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 50, left: 50),
              child: TextBox(),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, left: 290),
              child: MediaCircle(logoPath: 'assets/icons/dribbble-logo.png'),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30, left: 90),
              child: MediaCircle(logoPath: 'assets/icons/behance.png'),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, left: 260),
              child: MediaCircle(logoPath: 'assets/icons/stackOverflow.png'),
            ),
            SizedBox(height: 100),
            Container(
              width: deviceSize.width,
              alignment: Alignment.center,
              child: Container(
                height: 4,
                width: deviceSize.width / 10,
                decoration: BoxDecoration(
                    color: darkBlue2, borderRadius: BorderRadius.circular(20)),
              ),
            ),
            SizedBox(height: 15),
            Container(
              width: deviceSize.width,
              height: 60,
              alignment: Alignment.center,
              child: Container(
                  height: deviceSize.height / 8,
                  width: deviceSize.width / 1.8,
                  child: Text(
                    'Create interesting links in few seconds',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: deviceSize.height / 30,
                        color: darkBlue2,
                        fontWeight: FontWeight.bold),
                  )),
            ),
            Container(
              width: deviceSize.width,
              alignment: Alignment.center,
              child: Container(
                  height: deviceSize.height / 8,
                  width: deviceSize.width / 1.8,
                  child: Text(
                    'direct other user for the desired destination with a view that can be modified',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: deviceSize.height / 58,
                      color: Colors.grey.withOpacity(0.7),
                    ),
                  )),
            ),
            Spacer(),
            ArrowButton(),
            Spacer(
              flex: 10,
            )
          ]),
    ));
  }
}

