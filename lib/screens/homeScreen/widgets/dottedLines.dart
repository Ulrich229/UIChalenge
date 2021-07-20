import 'package:flutter/material.dart';

import '../../../colors.dart';

class DottedLines extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 2,
        child: ListView.separated(
          padding: EdgeInsets.all(0),
          shrinkWrap: true,
            itemBuilder: (ctx, _) {
              return Container(
                padding: EdgeInsets.all(0),
                margin: EdgeInsets.all(0),
                height: 5,
                color: pink,
              );
            },
            separatorBuilder: (ctx, _) {
              return SizedBox(height: 3);
            },
            itemCount: 20),
    );
  }
}
