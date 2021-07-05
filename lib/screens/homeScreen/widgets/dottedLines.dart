import 'package:flutter/material.dart';

import '../../../colors.dart';

class DottedLines extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal:49.0, vertical: 5.0),
        child: ListView.separated(
          padding: EdgeInsets.all(0),
          shrinkWrap: true,
            itemBuilder: (ctx, _) {
              return Container(
                padding: EdgeInsets.all(0),
                margin: EdgeInsets.all(0),
                height: 5,
                width: 2,
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
