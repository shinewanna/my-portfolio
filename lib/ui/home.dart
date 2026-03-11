import 'package:auto_animated/auto_animated.dart';
import 'package:day_night_switcher/day_night_switcher.dart';
import 'package:flutter/material.dart';
import 'package:myporfolio/config/colors.dart';
import 'package:myporfolio/config/constants.dart';
import 'package:myporfolio/config/styles.dart';
import 'package:myporfolio/service/cache_service.dart';
import 'package:myporfolio/ui/about_me_text_view.dart';
import 'package:myporfolio/ui/cta_section.dart';
import 'package:myporfolio/ui/education_view.dart';
import 'package:myporfolio/ui/exp_view.dart';
import 'package:myporfolio/ui/footer.dart';
import 'package:myporfolio/ui/header.dart';
import 'package:myporfolio/ui/language_view.dart';
import 'package:myporfolio/ui/projects.dart';
import 'package:myporfolio/ui/skill_view.dart';
import 'package:myporfolio/data/my_info.dart';
import 'package:myporfolio/widget/visible_animate.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:velocity_x/velocity_x.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _scrollController = ScrollController();
  bool _showBackToTop = false;

  final _aboutKey = GlobalKey();
  final _expKey = GlobalKey();
  final _skillsKey = GlobalKey();
  final _projectsKey = GlobalKey();
  final _contactKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    final show = _scrollController.offset > 300;
    if (show != _showBackToTop) {
      setState(() => _showBackToTop = show);
    }
  }

  void _scrollTo(GlobalKey key) {
    final ctx = key.currentContext;
    if (ctx != null) {
      Scrollable.ensureVisible(
        ctx,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }
  }

  void _scrollToTop() {
    _scrollController.animateTo(
      0,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  Widget _buildProfileImage() {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: AppColors.primaryGradient,
        boxShadow: [
          BoxShadow(
            color: AppColors.primary.withValues(alpha: 0.3),
            blurRadius: 20,
            spreadRadius: 2,
          ),
        ],
      ),
      padding: const EdgeInsets.all(4),
      child: const CircleAvatar(
        radius: 80,
        backgroundImage: AssetImage('asset/Icon-192.png'),
        backgroundColor: Colors.transparent,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ScreenTypeLayout.builder(
          desktop: (_) => Center(
            child: CustomScrollView(
              controller: _scrollController,
              physics: const BouncingScrollPhysics(),
              slivers: [
                Header(
                  onAbout: () => _scrollTo(_aboutKey),
                  onExperience: () => _scrollTo(_expKey),
                  onSkills: () => _scrollTo(_skillsKey),
                  onProjects: () => _scrollTo(_projectsKey),
                  onContact: () => _scrollTo(_contactKey),
                ),
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          key: _aboutKey,
                                          child: _buildProfileImage(),
                                        ),
                                        30.heightBox,
                                        AboutMeTextView(),
                                        AppStyle.subtitle(myInfo.title),
                                        10.heightBox,
                                        AppStyle.desc(myInfo.objective),
                                        30.heightBox,
                                        Container(
                                          key: _expKey,
                                          child:
                                              AppStyle.title('Experience'),
                                        ),
                                        20.heightBox,
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Expanded(child: ExpView()),
                                            Expanded(
                                              child: Image.network(
                                                AppConstants.devImage,
                                                webHtmlElementStrategy:
                                                    WebHtmlElementStrategy
                                                        .prefer,
                                                height: 400,
                                                width: 400,
                                                alignment: Alignment.center,
                                              ),
                                            ),
                                          ],
                                        ),
                                        50.heightBox,
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .start,
                                                  children: [
                                                    EducationView(),
                                                    5.heightBox,
                                                    LanguageView(),
                                                  ],
                                                ),
                                                Expanded(
                                                    child: Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      horizontal: 100),
                                                  child: Container(
                                                    key: _skillsKey,
                                                    child: SkillView(),
                                                  ),
                                                ))
                                              ],
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              key: _projectsKey,
                              child: VisibleAnimate(
                                id: 'professional_project',
                                child: Projects(
                                  title: 'Professional Projects',
                                  projects: myInfo.professionalProjects,
                                  titleBorderColor: AppColors.secondary,
                                ),
                              ),
                            ),
                            VisibleAnimate(
                              id: 'personal_project',
                              child: Projects(
                                title: 'Personal Projects',
                                projects: myInfo.personalProjects,
                                titleBorderColor: AppColors.primary,
                              ),
                            ),
                            Container(
                              key: _contactKey,
                              child: VisibleAnimate(
                                id: 'cta',
                                child: const CtaSection(),
                              ),
                            ),
                            VisibleAnimate(
                                id: 'footer', child: Footer()),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          mobile: (_) => Center(
            child: CustomScrollView(
              controller: _scrollController,
              physics: const BouncingScrollPhysics(),
              slivers: [
                Header(
                  onAbout: () => _scrollTo(_aboutKey),
                  onExperience: () => _scrollTo(_expKey),
                  onSkills: () => _scrollTo(_skillsKey),
                  onProjects: () => _scrollTo(_projectsKey),
                  onContact: () => _scrollTo(_contactKey),
                ),
                SliverPadding(
                  padding: const EdgeInsets.all(40.0),
                  sliver: SliverToBoxAdapter(
                    child: AnimateIfVisibleWrapper(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            VisibleAnimate(
                              id: 'mobile_main',
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          key: _aboutKey,
                                          child: Center(
                                              child: _buildProfileImage()),
                                        ),
                                        20.heightBox,
                                        AboutMeTextView(),
                                        AppStyle.subtitle(myInfo.title),
                                        10.heightBox,
                                        AppStyle.desc(myInfo.objective),
                                        20.heightBox,
                                        Container(
                                          key: _expKey,
                                          child:
                                              AppStyle.title('Experience'),
                                        ),
                                        10.heightBox,
                                        ExpView(),
                                        Container(
                                          key: _skillsKey,
                                          child: SkillView(),
                                        ),
                                        30.heightBox,
                                        EducationView(),
                                        20.heightBox,
                                        LanguageView(),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              key: _projectsKey,
                              child: VisibleAnimate(
                                id: 'mobile_professional',
                                child: Projects(
                                  title: 'Professional Projects',
                                  projects: myInfo.professionalProjects,
                                  titleBorderColor: AppColors.secondary,
                                ),
                              ),
                            ),
                            VisibleAnimate(
                              id: 'mobile_personal',
                              child: Projects(
                                title: 'Personal Projects',
                                projects: myInfo.personalProjects,
                                titleBorderColor: AppColors.primary,
                              ),
                            ),
                            Container(
                              key: _contactKey,
                              child: VisibleAnimate(
                                id: 'mobile_cta',
                                child: const CtaSection(),
                              ),
                            ),
                            VisibleAnimate(
                              id: 'mobile_footer',
                              child: Footer(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (_showBackToTop)
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: FloatingActionButton.small(
                  heroTag: 'back_to_top',
                  onPressed: _scrollToTop,
                  backgroundColor: AppColors.primary,
                  child:
                      const Icon(Icons.arrow_upward, color: Colors.white),
                ),
              ),
            VxBox(
              child: DayNightSwitcherIcon(
                dayBackgroundColor: AppColors.primary,
                sunColor: AppColors.secondary,
                isDarkModeEnabled:
                    !CacheService.settings.darkMode.getValue(),
                onStateChanged: (_) {
                  CacheService.settings.darkMode.setValue(
                      !CacheService.settings.darkMode.getValue());
                },
              ),
            ).height(70).roundedFull.shadow5xl.make(),
          ],
        ),
    );
  }
}

