import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:myporfolio/data/my_info.dart';
import 'package:myporfolio/model/skill.dart';
import 'package:velocity_x/velocity_x.dart';

class SkillView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimationLimiter(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: AnimationConfiguration.toStaggeredList(
            duration: const Duration(milliseconds: 500),
            childAnimationBuilder: (widget) => SlideAnimation(
              verticalOffset: 50.0,
              child: FadeInAnimation(
                child: widget,
              ),
            ),
            children: [
              'Skills'.text.xl2.make(),
              10.heightBox,
              SkillChipWidget(
                title: 'Mobile Framework:',
                skills: myInfo.mobileFrameworks,
              ),
              SkillChipWidget(
                title: 'Web & Desktop:',
                skills: myInfo.otherPlatforms,
              ),
              SkillChipWidget(
                title: 'Database:',
                skills: myInfo.databases,
              ),
              SkillChipWidget(
                title: 'Version Control:',
                skills: myInfo.versionControl,
              ),
              SkillChipWidget(
                title: 'CI/CD:',
                skills: myInfo.ciCd,
              ),
              SkillChipWidget(
                title: 'Testing:',
                skills: myInfo.testing,
              ),
              SkillChipWidget(
                title: 'Cloud Services:',
                skills: myInfo.cloudServices,
              ),
            ],
          )),
    );
  }
}

class SkillChipWidget extends StatelessWidget {
  final String title;
  final List<Skill> skills;
  const SkillChipWidget({Key? key, required this.title, required this.skills})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        title.text.lg.make(),
        5.heightBox,
        Wrap(
          spacing: 8.0,
          runSpacing: 8.0,
          alignment: WrapAlignment.start,
          children: skills
              .map((e) => Chip(
                      label: Text(
                    e.name,
                    overflow: TextOverflow.ellipsis,
                  )))
              .toList(),
        ),
        10.heightBox,
      ],
    );
  }
}
