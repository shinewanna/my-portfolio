import 'package:day_night_switcher/day_night_switcher.dart';
import 'package:flutter/material.dart';
import 'package:myporfolio/config/colors.dart';
import 'package:myporfolio/model/acadamic_detail.dart';
import 'package:myporfolio/model/skill.dart';
import 'package:myporfolio/service/cache_service.dart';
import 'package:myporfolio/ui/about_me_text_view.dart';
import 'package:myporfolio/ui/acadamic_exp_view.dart';
import 'package:myporfolio/ui/contact_us.dart';
import 'package:myporfolio/ui/footer.dart';
import 'package:myporfolio/ui/header.dart';
import 'package:myporfolio/ui/my_projects.dart';
import 'package:myporfolio/ui/skill_view.dart';
import 'package:myporfolio/utils/app_utils.dart';
import 'package:myporfolio/utils/my_info.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:velocity_x/velocity_x.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenTypeLayout(
        desktop: Center(
          child: CustomScrollView(
            slivers: [
              Header(),
              SliverPadding(
                padding: const EdgeInsets.all(40.0),
                sliver: SliverToBoxAdapter(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    'asset/my_photo.jpg',
                                    height: 200,
                                    width: 200,
                                  ),
                                  20.heightBox,
                                  AboutMeTextView(),
                                  AppUtil.withSubtitleStyle(myInfo.title),
                                  10.heightBox,
                                  AppUtil.withDescStyle(myInfo.objective),
                                  20.heightBox,
                                  AppUtil.withSubtitleStyle("Experience"),
                                  10.heightBox,
                                  AppUtil.withDescStyle(myInfo.exp),
                                  20.heightBox,
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      AcadamicAndExpView(),
                                      Expanded(child: SkillView()),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Image.asset(
                              "asset/programmer_without_background.gif",
                              height: 500,
                              width: 500,
                              alignment: Alignment.center,
                            ),
                          ],
                        ),
                        MyProjects(),
                        ContactUs(),
                        Footer(),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        mobile: Center(
          child: CustomScrollView(
            slivers: [
              Header(),
              SliverPadding(
                padding: const EdgeInsets.all(40.0),
                sliver: SliverToBoxAdapter(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    'asset/my_photo.jpg',
                                    height: 200,
                                    width: 200,
                                  ),
                                  20.heightBox,
                                  AboutMeTextView(),
                                  AppUtil.withSubtitleStyle(myInfo.title),
                                  10.heightBox,
                                  AppUtil.withDescStyle(myInfo.objective),
                                  20.heightBox,
                                  AppUtil.withSubtitleStyle("Experience"),
                                  10.heightBox,
                                  AppUtil.withDescStyle(myInfo.exp),
                                  20.heightBox,
                                  AcadamicAndExpView(),
                                  SkillView(),
                                ],
                              ),
                            ),
                          ],
                        ),
                        MyProjects(),
                        ContactUs(),
                        Footer(),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: VxBox(
        child: DayNightSwitcherIcon(
          dayBackgroundColor: AppColors.primary,
          sunColor: AppColors.secondary,
          isDarkModeEnabled: !CacheService.settings.darkMode.getValue(),
          onStateChanged: (_) {
            CacheService.settings.darkMode
                .setValue(!CacheService.settings.darkMode.getValue());
          },
        ),
      ).height(70).roundedFull.shadow5xl.make(),
    );
  }
}
