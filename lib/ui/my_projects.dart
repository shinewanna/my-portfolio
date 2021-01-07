import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myporfolio/model/project.dart';
import 'package:myporfolio/ui/store_button.dart';
import 'package:myporfolio/utils/app_utils.dart';
import 'package:myporfolio/utils/my_info.dart';
import 'package:myporfolio/widget/line_box_widget.dart';
import 'package:myporfolio/widget/nth.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';
import '../config/styles.dart';
import '../config/colors.dart';
import 'package:velocity_x/velocity_x.dart';

class MyProjects extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: Padding(
        padding: EdgeInsets.symmetric(vertical: 100),
        child: Column(
          children: [
            LineBoxWidget(
              title: 'PROJECTS',
              color: AppColors.secondary,
            ),
            const SizedBox(height: 50),
            ...myInfo.projects.map((p) => _buildProject(context, p)).toList(),
          ],
        ),
      ),
      mobile: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * .15,
          vertical: 50,
        ),
        child: Column(
          children: [
            LineBoxWidget(
              title: 'PROJECTS',
              color: AppColors.secondary,
            ),
            const SizedBox(height: 50),
            Wrap(
              children: myInfo.projects
                  .map((p) => _buildProject(context, p))
                  .toList(),
              spacing: 5,
              runSpacing: 5,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProject(BuildContext context, Project project) =>
      ScreenTypeLayout(
        desktop: SizedBox(
          width: MediaQuery.of(context).size.width * .7,
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  project.image.isEmptyOrNull
                      ? Nth()
                      : Expanded(
                          child: SizedBox(
                            height: MediaQuery.of(context).size.width * .3,
                            child: GestureDetector(
                              onTap: project.playStore.isEmptyOrNull
                                  ? null
                                  : () => launch(project.playStore),
                              child: Image.asset(
                                project.image,
                                fit: project.isFitHeight
                                    ? BoxFit.fitHeight
                                    : null,
                              ),
                            ),
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
                        Text(project.name, style: AppStyles.title),
                        SizedBox(
                          height: MediaQuery.of(context).size.width * .01,
                        ),
                        Text(project.description),
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
                color: AppColors.black.withOpacity(.1),
                height: 20,
                thickness: 1,
              ),
            ],
          ),
        ),
        mobile: SizedBox(
          width: MediaQuery.of(context).size.width * .7,
          child: Column(
            children: [
              project.image.isEmptyOrNull
                  ? Nth()
                  : SizedBox(
                      height: MediaQuery.of(context).size.width * .75,
                      child: GestureDetector(
                          onTap: () => launch(project.playStore),
                          child: Image.asset(project.image)),
                    ),
              SizedBox(width: MediaQuery.of(context).size.width * .075),
              SizedBox(
                height: MediaQuery.of(context).size.width * .01,
              ),
              Text(project.name, style: AppStyles.title),
              SizedBox(
                height: MediaQuery.of(context).size.width * .01,
              ),
              Text(
                project.description,
                textAlign: TextAlign.justify,
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
                color: AppColors.black.withOpacity(.1),
                height: 50,
                thickness: 1,
              ),
            ],
          ),
        ),
      );
}
