import 'package:flutter/material.dart';
import 'package:myporfolio/utils/my_info.dart';
import 'package:velocity_x/velocity_x.dart';

class SkillView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        "What Skill I Have".text.xl.make(),
        10.heightBox,
        Wrap(
          spacing: 8.0,
          runSpacing: 8.0,
          children:
              myInfo.skills.map((e) => Chip(label: Text(e.name))).toList(),
        )
      ],
    );
  }
}
