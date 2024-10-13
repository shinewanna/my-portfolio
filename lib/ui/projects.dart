import 'package:flutter/material.dart';
import 'package:myporfolio/config/app_utils.dart';
import 'package:myporfolio/config/styles.dart';
import 'package:myporfolio/model/project.dart';
import 'package:myporfolio/ui/store_button.dart';
import 'package:myporfolio/widget/line_box_widget.dart';
import 'package:myporfolio/widget/nth.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:transparent_image/transparent_image.dart';
import '../config/colors.dart';
import 'package:velocity_x/velocity_x.dart';

class Projects extends StatelessWidget {
  final String title;
  final List<Project> projects;
  final Color titleBorderColor;

  const Projects(
      {Key? key,
      required this.title,
      required this.projects,
      required this.titleBorderColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (_) => Padding(
        padding: EdgeInsets.symmetric(vertical: 30),
        child: Column(
          children: [
            LineBoxWidget(
              title: title,
              color: titleBorderColor,
            ),
            const SizedBox(height: 50),
            ...projects.map((p) => _buildProject(context, p)).toList(),
          ],
        ),
      ),
      mobile: (_) => Padding(
        padding: EdgeInsets.symmetric(
          vertical: 50,
        ),
        child: Column(
          children: [
            LineBoxWidget(
              title: title,
              color: titleBorderColor,
            ),
            const SizedBox(height: 50),
            Wrap(
              children: projects.map((p) => _buildProject(context, p)).toList(),
              spacing: 5,
              runSpacing: 5,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProject(BuildContext context, Project project) =>
      ScreenTypeLayout.builder(
        desktop: (_) => SizedBox(
          width: MediaQuery.of(context).size.width * .7,
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .10,
                    child: project.image.isEmptyOrNull
                        ? SelectableText(
                            'No image to display for this particular project.',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        : GestureDetector(
                            onTap: project.playStore.isEmptyOrNull
                                ? null
                                : () => AppUtils.launchLink(project.playStore!),
                            child: FadeInImage.memoryNetwork(
                              image: project.image!,
                              placeholder: kTransparentImage,
                            ).card.roundedSM.make(),
                          ),
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width * .075),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.width * .01,
                        ),
                        AppStyle.title(project.name),
                        SizedBox(
                          height: MediaQuery.of(context).size.width * .01,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: project.bullets
                              .map(
                                (e) => Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: AppStyle.desc('•  $e'),
                                ),
                              )
                              .toList(),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.width * .025,
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.width * .025,
                        ),
                        StoreButton(
                          project: project,
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Divider(
                color: AppColors.text.withOpacity(.1),
                height: 20,
                thickness: 1,
              ),
            ],
          ),
        ),
        mobile: (_) => SizedBox(
          width: MediaQuery.of(context).size.width * .7,
          child: Column(
            children: [
              project.image.isEmptyOrNull
                  ? Nth()
                  : SizedBox(
                      width: MediaQuery.of(context).size.width * .25,
                      child: GestureDetector(
                        onTap: () => AppUtils.launchLink(project.playStore!),
                        child: FadeInImage.memoryNetwork(
                          image: project.image!,
                          placeholder: kTransparentImage,
                        ).card.roundedSM.make(),
                      ),
                    ),
              SizedBox(width: MediaQuery.of(context).size.width * .075),
              SizedBox(
                height: MediaQuery.of(context).size.width * .01,
              ),
              AppStyle.title(project.name),
              SizedBox(
                height: MediaQuery.of(context).size.width * .01,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: project.bullets
                    .map(
                      (e) => Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: AppStyle.desc('•  $e'),
                      ),
                    )
                    .toList(),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * .025,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * .025,
              ),
              StoreButton(
                project: project,
              ),
              Divider(
                color: AppColors.text.withOpacity(.1),
                height: 50,
                thickness: 1,
              ),
            ],
          ),
        ),
      );
}
