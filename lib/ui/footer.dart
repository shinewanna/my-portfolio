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
          SelectableText(
            myInfo.getInTouch,
            style: TextStyle(
              color: AppColors.text,
              fontSize: 13,
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
                    fontSize: 13,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          SelectableText(
            'Phone Number',
            style: TextStyle(
              color: AppColors.text,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 7),
          SelectableText(
            AppConstants.phone,
            style: TextStyle(
              color: AppColors.text,
              fontSize: 13,
            ),
          ),
          const SizedBox(height: 20),
          SelectableText(
            'Location',
            style: TextStyle(
              color: AppColors.text,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 7),
          SelectableText(
            AppConstants.location,
            style: TextStyle(
              color: AppColors.text,
              fontSize: 13,
            ),
          )
        ],
      );

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: Column(
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
                    // Get in touch
                    Expanded(
                      child: getInTouch(),
                    ),
                    const SizedBox(width: 20),
                    // Aout me
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
                          SelectableText(
                            myInfo.aboutMe,
                            style: TextStyle(
                              color: AppColors.text,
                              fontSize: 13,
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
                    SelectableText(
                      'Proudly powered by Shine Wanna ©${DateTime.now().year}',
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
      mobile: Column(
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
                // Aout me
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
                    SelectableText(
                      myInfo.aboutMe,
                      style: TextStyle(
                        color: AppColors.text,
                        fontSize: 13,
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
                SelectableText(
                  'Proudly powered by Shine Wanna ©${DateTime.now().year}',
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
        InkWell(
          onTap: () async {
            launch(AppConstants.github);
          },
          child: AppIcon('asset/icons/github.png'),
        ),
        const SizedBox(width: 20),
        InkWell(
          onTap: () {
            launch(AppConstants.facebook);
          },
          child: AppIcon('asset/icons/facebook.png'),
        ),
      ];
}
