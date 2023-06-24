import 'package:flutter/material.dart';
import 'package:myporfolio/config/styles.dart';
import 'package:velocity_x/velocity_x.dart';

class LineBoxWidget extends StatelessWidget {
  final String title;
  final Color color;
  const LineBoxWidget({Key? key, required this.title, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            color: color,
            thickness: 3,
          ),
        ),
        AppStyle.title(title).box.p12.border(color: color, width: 3).make(),
        Expanded(
          child: Divider(
            color: color,
            thickness: 3,
          ),
        ),
      ],
    );
  }
}
