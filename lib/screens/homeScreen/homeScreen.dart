import 'package:flutter/material.dart';

import '../../colors.dart';
import './widgets/topMenu.dart';
import './widgets/userCircle.dart';
import './widgets/textZone.dart';
import './widgets/dottedLines.dart';
import './widgets/detailCard.dart';
import './widgets/bottomBar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: deviceSize.height,
            width: deviceSize.width,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.centerLeft,
                    colors: [
                  pink.withOpacity(0.3),
                  pink.withOpacity(0.25),
                  pink.withOpacity(0.20),
                  pink.withOpacity(0.15),
                  white,
                  white,
                ])),
            child: Column(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TopMenu(),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: TextZone(text: 'Create a'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: TextZone(text: 'clickable link in bio'),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: grey.withOpacity(0.65),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                            child: Container(
                          alignment: Alignment.center,
                          child: Container(
                            alignment: Alignment.center,
                            width: 100,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 30.0),
                                  child: Stack(
                                    alignment: Alignment.topCenter,
                                    children: [
                                      DottedLines(),
                                      UserCircle(
                                        imagePath:
                                            'assets/images/dummyWoomanProfile.png',
                                      ),
                                    ],
                                  ),
                                ),
                                Stack(
                                  alignment: Alignment.topCenter,
                                  children: [
                                    DottedLines(),
                                    UserCircle(
                                      imagePath:
                                          'assets/images/dummyManProfile.png',
                                    ),
                                  ],
                                ),
                                UserCircle(
                                  imagePath: 'assets/images/manAvatar.png',
                                ),
                              ],
                            ),
                          ),
                        )),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              DetailCard(
                                name: 'Elia Smith',
                                link: 'Smartlink.to/887rt7rt',
                                type: true,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              DetailCard(
                                name: 'Feed Basten',
                                link: 'Smartlink.to/876rt7as',
                                type: false,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              DetailCard(
                                name: 'Jhon Leman',
                                link: 'Smartlink.to/567rc677',
                                type: false,
                              ),
                            ],
                          ),
                          flex: 3,
                        )
                      ],
                    ),
                  ),
                  flex: 4,
                )
              ],
            ),
          ),
          BottomBar()
        ],
      ),
    );
  }
}