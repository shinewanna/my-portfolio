import 'package:day_night_switcher/day_night_switcher.dart';
import 'package:flutter/material.dart';
import 'package:myporfolio/config/colors.dart';
import 'package:myporfolio/service/cache_service.dart';
import 'package:myporfolio/utils/app_utils.dart';
import 'package:myporfolio/utils/my_info.dart';
import 'package:velocity_x/velocity_x.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              title: Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: Row(
                  children: [
                    "Porfol".text.gray700.bold.xl3.make(),
                    "i".text.bold.purple500.xl3.make(),
                    "o".text.bold.pink300.xl3.make()
                  ],
                ),
              ),
            ),
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
                                Row(
                                  children: [
                                    "About "
                                        .text
                                        .color(AppColors.text)
                                        .bold
                                        .xl6
                                        .make(),
                                    "M"
                                        .text
                                        .color(AppColors.primary)
                                        .bold
                                        .xl6
                                        .make(),
                                    "e"
                                        .text
                                        .bold
                                        .color(AppColors.secondary)
                                        .xl6
                                        .make()
                                  ],
                                ),
                                AppUtil.withSubtitleStyle(myInfo.title),
                                10.heightBox,
                                AppUtil.withDescStyle(myInfo.objective),
                                20.heightBox,
                                AppUtil.withSubtitleStyle("Experience"),
                                10.heightBox,
                                AppUtil.withDescStyle(myInfo.exp),
                                20.heightBox,
                                ...myInfo.exps
                                    .map((e) => Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            AppUtil.withSubtitleStyle(e.role),
                                            3.heightBox,
                                            e.place.text.make(),
                                            AppUtil.withDescStyle(e.fromTo),
                                            20.heightBox
                                          ],
                                        ))
                                    .toList(),
                              ],
                            ),
                          ),
                          Image.asset(
                            "asset/programmer.png",
                            width: 500,
                            height: 500,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: VxBox(
        child: DayNightSwitcherIcon(
          dayBackgroundColor: AppColors.primary,
          sunColor: AppColors.secondary,
          isDarkModeEnabled: CacheService.settings.darkMode.getValue(),
          onStateChanged: (_) {
            CacheService.settings.darkMode
                .setValue(!CacheService.settings.darkMode.getValue());
          },
        ),
      ).height(70).roundedFull.shadow5xl.make(),
    );
  }
}
