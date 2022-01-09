import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myporfolio/config/styles.dart';
import 'package:myporfolio/model/project.dart';
import 'package:myporfolio/ui/store_button.dart';
import 'package:myporfolio/data/my_info.dart';
import 'package:myporfolio/widget/line_box_widget.dart';
import 'package:myporfolio/widget/nth.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:url_launcher/url_launcher.dart';
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
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  project.image.isEmptyOrNull
                      ? Nth()
                      : Container(
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width * .10,
                            child: GestureDetector(
                              onTap: project.playStore.isEmptyOrNull
                                  ? null
                                  : () => launch(project.playStore),
                              child: FadeInImage.memoryNetwork(
                                image: project.image,
                                placeholder: kTransparentImage,
                              ).card.roundedSM.make(),
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
                        AppStyle.title(project.name),
                        SizedBox(
                          height: MediaQuery.of(context).size.width * .01,
                        ),
                        AppStyle.desc(project.description),
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
        mobile: SizedBox(
          width: MediaQuery.of(context).size.width * .7,
          child: Column(
            children: [
              project.image.isEmptyOrNull
                  ? Nth()
                  : SizedBox(
                      width: MediaQuery.of(context).size.width * .25,
                      child: GestureDetector(
                        onTap: () => launch(project.playStore),
                        child: FadeInImage.memoryNetwork(
                          image: project.image,
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
              AppStyle.desc(project.description),
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
