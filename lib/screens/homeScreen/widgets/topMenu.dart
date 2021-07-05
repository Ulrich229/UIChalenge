import 'package:challenge/colors.dart';
import 'package:flutter/material.dart';

class TopMenu extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return 
              Container(
                alignment: Alignment.bottomCenter,
                height: deviceSize.height / 10,
                width: deviceSize.width,
                child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Container(
              height: 35,
              width: 40,
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: Image.asset('assets/icons/menu.png'),
              ),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey.withOpacity(0.1),
                    width: 1.5,
                  ),
                  borderRadius: BorderRadius.circular(12),),
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Container(
              height: 45,
              width: 45,
              decoration: BoxDecoration(
                color: Colors.blue[200],
                shape: BoxShape.circle,
                image: DecorationImage(image: AssetImage('assets/images/dummyWoomanProfile.png'))),
            ),
          ),
        ]),);
  }
}