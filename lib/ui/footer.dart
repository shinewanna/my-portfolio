import 'package:flutter/material.dart';
import 'package:mailto/mailto.dart';
import 'package:myporfolio/config/styles.dart';
import 'package:myporfolio/data/my_info.dart';
import 'package:myporfolio/widget/line_box_widget.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';
import '../config/constants.dart';
import '../config/colors.dart';
import 'icon.dart';

class Footer extends StatelessWidget {
  void _sendMail() async {
    final mailto = Mailto(
      to: [AppConstants.mail],
    );
    await launch('$mailto');
  }

  getInTouch() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 2,
                height: 20,
                color: AppColors.primary,
              ),
              const SizedBox(width: 7.5),
              AppStyle.subtitle('GET IN TOUCH'),
            ],
          ),
          const SizedBox(height: 20),
          Text(
            myInfo.getInTouch,
            style: TextStyle(
              color: AppColors.text,
              fontSize: 15,
            ),
          ),
          const SizedBox(height: 20),
          GestureDetector(
            onTap: _sendMail,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Email Address',
                  style: TextStyle(
                    color: AppColors.text,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const SizedBox(height: 7),
                Text(
                  AppConstants.mail,
                  style: TextStyle(
                    color: AppColors.text,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Text(
            'Phone Number',
            style: TextStyle(
              color: AppColors.text,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 7),
          Text(
            AppConstants.phone,
            style: TextStyle(
              color: AppColors.text,
              fontSize: 15,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            'Location',
            style: TextStyle(
              color: AppColors.text,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 7),
          Text(
            AppConstants.location,
            style: TextStyle(
              color: AppColors.text,
              fontSize: 15,
            ),
          )
        ],
      );

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (_) => Column(
        children: [
          LineBoxWidget(
            title: 'GET IN TOUCH',
            color: AppColors.primary,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * .15,
              vertical: 30,
            ),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: getInTouch(),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 2,
                                height: 20,
                                color: AppColors.primary,
                              ),
                              const SizedBox(width: 7.5),
                              AppStyle.subtitle('ABOUT ME'),
                            ],
                          ),
                          const SizedBox(height: 20),
                          Text(
                            myInfo.aboutMe,
                            style: TextStyle(
                              color: AppColors.text,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 20),
                  ],
                ),
                const SizedBox(height: 30),
                Divider(
                  color: AppColors.text.withOpacity(.75),
                  thickness: .5,
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Proudly powered by Shine Wanna \u00a9${DateTime.now().year}',
                      style: TextStyle(
                        color: AppColors.text.withOpacity(.75),
                      ),
                    ),
                    Row(children: _socialMedia()),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
      mobile: (_) => Column(
        children: [
          LineBoxWidget(
            title: 'GET IN TOUCH',
            color: AppColors.primary,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * .15,
              vertical: 30,
            ),
            child: Column(
              children: [
                getInTouch(),
                const SizedBox(height: 30),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 2,
                          height: 20,
                          color: AppColors.primary,
                        ),
                        const SizedBox(width: 7.5),
                        AppStyle.subtitle('ABOUT ME'),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Text(
                      myInfo.aboutMe,
                      style: TextStyle(
                        color: AppColors.text,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Divider(
                  color: AppColors.text.withOpacity(.75),
                  thickness: .5,
                ),
                const SizedBox(height: 20),
                FittedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: _socialMedia(),
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  'Proudly powered by Shine Wanna \u00a9${DateTime.now().year}',
                  style: TextStyle(
                    color: AppColors.text.withOpacity(.75),
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _socialMedia() => [
        _SocialIcon(
          icon: AppConstants.linkedInImage,
          url: AppConstants.linkedIn,
        ),
        const SizedBox(width: 16),
        _SocialIcon(
          icon: AppConstants.githubImage,
          url: AppConstants.github,
        ),
        const SizedBox(width: 16),
        _SocialIcon(
          icon: AppConstants.facebookImage,
          url: AppConstants.facebook,
        ),
      ];
}

class _SocialIcon extends StatefulWidget {
  final String icon;
  final String url;

  const _SocialIcon({required this.icon, required this.url});

  @override
  State<_SocialIcon> createState() => _SocialIconState();
}

class _SocialIconState extends State<_SocialIcon> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: GestureDetector(
        onTap: () => launch(widget.url),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: _isHovered
                ? AppColors.primary.withOpacity(0.2)
                : AppColors.primary.withOpacity(0.08),
          ),
          child: AppIcon(widget.icon, size: 20),
        ),
      ),
    );
  }
}
