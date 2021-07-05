import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../colors.dart';

class CustomBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return BackdropFilter(
      filter: ImageFilter.blur(),
      child: Container(
        height: deviceSize.height / 2.5,
        width: deviceSize.width,
        decoration: BoxDecoration(
            color: grey,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40), topRight: Radius.circular(40))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 5),
            Divider(
              height: 10,
              indent: 130,
              endIndent: 130,
              color: darkBlue1.withOpacity(0.1),
              thickness: 4.0,
            ),
            SizedBox(height: 10),
            SheetTile(iconLink: 'assets/icons/url.png', text1: 'URL Link', text2: 'Smartlink.to/887rt7rt',),
            SizedBox(height: 10),
            SheetTile(iconLink: 'assets/icons/discount.png', text1: 'Promote', text2: 'Promote your link on the official \nNgefly Instagram',),
            SizedBox(height: 10),
            SheetTile(iconLink: 'assets/icons/messenger.png', text1: 'From Message', text2: 'All from messages at this link are \ncollected here',),
            SizedBox(height: 10),
            SheetTile(iconLink: 'assets/icons/settings.png', text1: 'Setting', text2: 'SEO,Google Analytics, FB Pixel, \nUTM Parameters',)
          ],
        ),
      ),
    );
  }
}

class SheetTile extends StatelessWidget {
  final String iconLink;
  final String text1;
  final String text2;

  SheetTile({@required this.iconLink, @required this.text1, @required this.text2});

  @override
  Widget build(BuildContext context) {
  final deviceSize = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      height: 51,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 40,
            width:40,
            decoration: BoxDecoration(
              color: darkBlue1.withOpacity(0.1),
              borderRadius: BorderRadius.circular(10)
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.asset(iconLink,color: darkBlue2,),
            ),
          ),
          SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children:[
              Text(text1, style: TextStyle(color: darkBlue2, fontWeight: FontWeight.bold, fontSize: deviceSize.height/40),),
              Text(text2, style: TextStyle(color:Colors.grey, fontSize: deviceSize.height/60),),
              SizedBox(height: 5,)
            ]
          ),
          Spacer(),
          Container(
          height: 30,
          width: 30,
          decoration:BoxDecoration(
            color: pink,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('assets/icons/rightArrow.png'),
          )
          )
        ],
      ),
    );
  }
}
