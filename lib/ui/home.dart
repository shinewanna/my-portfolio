import 'package:auto_animated/auto_animated.dart';
import 'package:day_night_switcher/day_night_switcher.dart';
import 'package:flutter/material.dart';
import 'package:myporfolio/config/colors.dart';
import 'package:myporfolio/config/constants.dart';
import 'package:myporfolio/config/styles.dart';
import 'package:myporfolio/service/cache_service.dart';
import 'package:myporfolio/ui/about_me_text_view.dart';
import 'package:myporfolio/ui/education_view.dart';
import 'package:myporfolio/ui/exp_view.dart';
import 'package:myporfolio/ui/footer.dart';
import 'package:myporfolio/ui/header.dart';
import 'package:myporfolio/ui/language_view.dart';
import 'package:myporfolio/ui/my_projects.dart';
import 'package:myporfolio/ui/skill_view.dart';
import 'package:myporfolio/data/my_info.dart';
import 'package:myporfolio/widget/visible_animate.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:velocity_x/velocity_x.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenTypeLayout(
        desktop: Center(
          child: CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: [
              Header(),
              SliverPadding(
                padding: const EdgeInsets.all(40.0),
                sliver: SliverToBoxAdapter(
                  child: AnimateIfVisibleWrapper(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          VisibleAnimate(
                            id: 'main',
                            child: Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                        'asset/Icon-192.png',
                                        height: 200,
                                        width: 200,
                                        fit: BoxFit.cover,
                                      ).card.make(),
                                      20.heightBox,
                                      AboutMeTextView(),
                                      AppStyle.subtitle(myInfo.title),
                                      10.heightBox,
                                      AppStyle.desc(myInfo.objective),
                                      20.heightBox,
                                      AppStyle.subtitle("Experience"),
                                      10.heightBox,
                                      AppStyle.desc(myInfo.exp),
                                      20.heightBox,
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          ExpView(),
                                          Expanded(child: SkillView()),
                                        ],
                                      ),
                                      50.heightBox,
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          EducationView(),
                                          50.widthBox,
                                          LanguageView(),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                FadeInImage.memoryNetwork(
                                  image: AppConstants.devImage,
                                  placeholder: kTransparentImage,
                                  height: 500,
                                  width: 500,
                                  alignment: Alignment.center,
                                ),
                              ],
                            ),
                          ),
                          VisibleAnimate(id: 'project', child: MyProjects()),
                          VisibleAnimate(id: 'footer', child: Footer()),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        mobile: Center(
          child: CustomScrollView(
            physics: BouncingScrollPhysics(),
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
                                    'asset/Icon-192.png',
                                    height: 200,
                                    width: 200,
                                    fit: BoxFit.cover,
                                  ).card.make(),
                                  20.heightBox,
                                  AboutMeTextView(),
                                  AppStyle.subtitle(myInfo.title),
                                  10.heightBox,
                                  AppStyle.desc(myInfo.objective),
                                  20.heightBox,
                                  AppStyle.subtitle("Experience"),
                                  10.heightBox,
                                  AppStyle.desc(myInfo.exp),
                                  20.heightBox,
                                  ExpView(),
                                  SkillView(),
                                  30.heightBox,
                                  EducationView(),
                                  20.heightBox,
                                  LanguageView(),
                                ],
                              ),
                            ),
                          ],
                        ),
                        MyProjects(),
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
