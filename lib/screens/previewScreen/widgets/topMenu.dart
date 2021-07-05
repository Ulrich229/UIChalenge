import 'package:flutter/material.dart';

import './../../../colors.dart';
import './customBottomSheet.dart';

class TopMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Container(
        alignment: Alignment.bottomCenter,
        height: deviceSize.height / 10,
        width: deviceSize.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            MenuButton(iconPath: 'assets/icons/leftArrow.png', type: 0,),
            Spacer(),
            Text('Preview', style: TextStyle(color: darkBlue1, fontSize: deviceSize.height/30, fontWeight: FontWeight.bold),),
            Spacer(),
            MenuButton(iconPath: 'assets/icons/menuDots.png', type: 1,),
          ],
        ));
  }
}

class MenuButton extends StatelessWidget {
  final String iconPath;
  final int type;
  MenuButton({@required this.iconPath, @required this.type});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: type==0?()=>Navigator.of(context).pop():(){
      Scaffold.of(context).showBottomSheet((context) => CustomBottomSheet(), backgroundColor: Colors.transparent);
      },
          child: Container(
        height: 35,
        width: 35,
        child: Padding(
          padding: const EdgeInsets.all(7),
          child: Image.asset(iconPath, color: darkBlue2,),
        ),
        decoration: BoxDecoration(
          color: grey.withOpacity(0.8),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
