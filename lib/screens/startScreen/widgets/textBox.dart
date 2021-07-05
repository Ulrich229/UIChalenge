import 'package:flutter/material.dart';

import '../../../colors.dart';
import './mediaCircle.dart';

class TextBox extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Stack(
        children:[
      Padding(
        padding: const EdgeInsets.only(top:15.0),
        child: Container(
            decoration: BoxDecoration(
              color: white,
              borderRadius: BorderRadius.all(Radius.circular(10))
            ),
            height: deviceSize.height / 8,
            width: deviceSize.width / 2.2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Smart Link',
                      style: TextStyle(color: darkBlue2, fontSize: deviceSize.height/43, fontWeight: FontWeight.values[6]),
                    ),
                    Text(
                      'Make your url look elegant \nand clean',
                      style: TextStyle(color: Colors.grey.withOpacity(0.7), fontSize: deviceSize.height/53),
                    ),
                  ]),
            ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left:160.0,),
        child: MediaCircle(logoPath:'assets/icons/urlWhite.png'),
      ),
        ]
    );
  }
}
