import 'package:flutter/material.dart';

import '../../../colors.dart';

class CardButton extends StatelessWidget {
  final String text;
  final String iconPath;
  final Color color;
  const CardButton({
    @required this.text,
    @required this.iconPath,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Container(
          padding: EdgeInsets.all(8),
          width: deviceSize.width / 4.5,
          height: 35,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
                Radius.circular(7)),
            color: color==white? darkBlue2: grey,
          ),
          child: Row(
            mainAxisAlignment:
                MainAxisAlignment.center,
            children: [
              Container(
                  height: 15,
                  width: 15,
                  child: Image.asset(
                    iconPath,
                    color: color,
                  )),
                  SizedBox(width:7),
              Container(
                child: Text(
                  text,
                  style: TextStyle(
                      color: color,
                      fontSize: deviceSize.height/65,
                      fontWeight:
                          FontWeight.values[4]),
                ),
              )
            ],
          ),
        );
  }
}
