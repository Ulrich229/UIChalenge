import 'package:flutter/material.dart';

import '../../../colors.dart';
import '../../homeScreen/homeScreen.dart';

class ArrowButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Container(
      width: deviceSize.width,
      alignment: Alignment.center,
      child: MaterialButton(
        onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder:(ctx)=>HomeScreen()));
        },
        splashColor: darkBlue1,
        child: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: darkBlue1,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: darkBlue2.withOpacity(0.2),
                offset: Offset(-7, 14),
                blurRadius: 10
              ),
              BoxShadow(
                color: darkBlue2.withOpacity(0.2),
                offset: Offset(7, 14),
                blurRadius: 10
              )
            ]
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Image.asset('assets/icons/rightArrow.png'),
          ),
        ),
      ),
    );
  }
}
