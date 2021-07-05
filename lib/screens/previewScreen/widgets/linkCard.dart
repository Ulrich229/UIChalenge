import 'package:flutter/material.dart';

import '../../../colors.dart';
import './profileDecoration.dart';
import './mediaButton.dart';

class LinkCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      padding: EdgeInsets.symmetric(horizontal: 25),
      height: deviceSize.height / 1.3,
      width: deviceSize.width / 1.5,
      decoration: BoxDecoration(
          color: darkBlue2,
          border: Border.all(color: pink, width: 5),
          borderRadius: BorderRadius.circular(30)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 25,),
          Stack(
            children: [
              ProfileDecoration(),
              Container(
                margin: EdgeInsets.only(top: 98, left: 5),
                child: Text(
                  'Elia Smith',
                  style: TextStyle(
                      color: grey,
                      fontSize: deviceSize.height / 30,
                      fontWeight: FontWeight.values[4]),
                ),
              )
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'Hello welcome to my bio',
            style: TextStyle(
              color: grey.withOpacity(0.6),
              fontSize: deviceSize.height / 50,
            ),
          ),
          SizedBox(height: 20,),
          MediaButton(iconPath: 'assets/icons/dribbble-logo.png', media: 'Dribbble',),
          SizedBox(height: 10,),
          MediaButton(iconPath: 'assets/icons/behance.png', media: 'Behance',),
          SizedBox(height: 10,),
          MediaButton(iconPath: 'assets/icons/stackOverflow.png', media: 'Stack Overflow',),
          SizedBox(height: 10,),
          MediaButton(iconPath: 'assets/icons/github.png', media: 'GitHub',),
          SizedBox(height: 10,),
          MediaButton(iconPath: 'assets/icons/facebook.png', media: 'Facebook',),
        ],
      ),
    );
  }
}

