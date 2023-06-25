import 'package:flutter/material.dart';
import 'package:myporfolio/data/my_info.dart';
import 'package:velocity_x/velocity_x.dart';

class ExpView extends StatelessWidget {
  const ExpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: myInfo.exps
          .map((e) => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      text: e.role,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      children: [
                        TextSpan(
                            text: ' at ${e.place}',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                            ))
                      ],
                    ),
                  ),
                  3.heightBox,
                  e.fromTo.selectableText.make(),
                  3.heightBox,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: e.bullets
                        .map(
                          (e) => Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: '• $e'.selectableText.size(15).make(),
                          ),
                        )
                        .toList(),
                  ),
                  20.heightBox,
                ],
              ))
          .toList(),
    );
  }
}
