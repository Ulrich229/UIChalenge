import 'package:flutter/material.dart';

import './../../../colors.dart';
import './cardButton.dart';
import '../../previewScreen/previewScreen.dart';

class DetailCard extends StatelessWidget {
  final String name;
  final String link;
  final bool type;
  final String nbVisitors;
  DetailCard({@required this.name, @required this.link, @required this.type, @required this.nbVisitors});

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return MaterialButton(
      onPressed: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>PreviewScreen())),
          child: Container(
        padding: EdgeInsets.only(top:10),
        decoration: BoxDecoration(
            color: type?darkBlue1: white,
            borderRadius:
                BorderRadius.all(Radius.circular(25)),
            boxShadow: [
              BoxShadow(
                  blurRadius: 4,
                  color: darkBlue1.withOpacity(0.2),
                  offset: Offset(0, 2.5))
            ]),
        height: deviceSize.height / 4.5,
        width: deviceSize.width / 1.5,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(
                  fontSize: deviceSize.height / 50,
                  fontWeight: FontWeight.bold,
                  color: type?white:darkBlue2,
                ),
              ),
              SizedBox(
                height: 7,
              ),
              Text(
                link,
                style: TextStyle(
                    fontSize: deviceSize.height / 60,
                    color: type?grey: Colors.grey),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceAround,
                children: [
                  CardButton(
                    iconPath: 'assets/icons/analytics.png',
                    text: '$nbVisitors Visitor',
                    color: type?white:darkBlue2,
                  ),
                  CardButton(
                    iconPath: 'assets/icons/send.png',
                    text: 'Share',
                    color: type?white:darkBlue2,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
