import 'package:flutter/material.dart';

import '../../../colors.dart';

class BottomBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final Size deviceSize = MediaQuery.of(context).size;
    return Container(
          height: 70,
          width: deviceSize.width / 1.8,
          decoration: BoxDecoration(
            color: darkBlue1,
            borderRadius: BorderRadius.all(Radius.circular(30),),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              BottomButton(iconPath: 'assets/icons/home.png', backgroundColor: darkBlue2,),
              BottomButton(iconPath: 'assets/icons/add.png', backgroundColor: pink,),
              BottomButton(iconPath: 'assets/icons/grid.png', backgroundColor: darkBlue1,),
            ],
          ),
        );
  }
}

class BottomButton extends StatelessWidget {
  final String iconPath;
  final Color backgroundColor;
  const BottomButton({
    @required this.iconPath,
    @required this.backgroundColor
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: backgroundColor
      ),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Image.asset(iconPath),
      ),
    );
  }
}
