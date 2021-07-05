import 'package:flutter/material.dart';

import '../../../colors.dart';

class MediaButton extends StatelessWidget {
  final String iconPath;
  final String media;
  MediaButton({@required this.iconPath, @required this.media});

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return MaterialButton(
      onPressed: () {},
      height: 40,
      minWidth: deviceSize.width / 2,
      color: pink,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Container(
          height: 20,
          width: 20,
          child: Image.asset(iconPath, color: white,),
        ),
        SizedBox(width: 10),
        Text(media, style: TextStyle(color: white, fontSize: deviceSize.height/40, fontWeight: FontWeight.values[3]),),
      ]),
    );
  }
}