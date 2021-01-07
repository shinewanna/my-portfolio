import 'package:flutter/material.dart';
import 'package:myporfolio/utils/app_utils.dart';
import 'package:myporfolio/utils/my_info.dart';
import 'package:velocity_x/velocity_x.dart';

class AcadamicAndExpView extends StatelessWidget {
  const AcadamicAndExpView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppUtil.withSubtitleStyle("Acadamic Detail"),
        3.heightBox,
        myInfo.acadamicDetail.name.text.tight.make(),
        AppUtil.withDescStyle(myInfo.acadamicDetail.degree),
        20.heightBox,
        ...myInfo.exps
            .map((e) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppUtil.withSubtitleStyle(e.role),
                    3.heightBox,
                    e.place.text.tight.make(),
                    AppUtil.withDescStyle(e.fromTo),
                    20.heightBox
                  ],
                ))
            .toList(),
      ],
    );
  }
}
