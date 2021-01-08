import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:myporfolio/data/my_info.dart';
import 'package:velocity_x/velocity_x.dart';

class SkillView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimationLimiter(
      child: Column(
          children: AnimationConfiguration.toStaggeredList(
        duration: const Duration(seconds: 1),
        childAnimationBuilder: (widget) => SlideAnimation(
          verticalOffset: 50.0,
          child: FadeInAnimation(
            child: widget,
          ),
        ),
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
      )),
    );
  }
}
