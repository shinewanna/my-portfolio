import 'package:flutter/material.dart';
import 'package:myporfolio/config/colors.dart';
import 'package:myporfolio/config/styles.dart';
import 'package:myporfolio/model/project.dart';
import 'package:myporfolio/ui/store_button.dart';
import 'package:myporfolio/widget/hover_scale.dart';
import 'package:myporfolio/widget/line_box_widget.dart';
import 'package:myporfolio/widget/shimmer_placeholder.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';
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
        padding: const EdgeInsets.symmetric(vertical: 30),
        child: Column(
          children: [
            LineBoxWidget(title: title, color: titleBorderColor),
            const SizedBox(height: 50),
            ...projects
                .map((p) => _buildDesktopProject(context, p))
                .toList(),
          ],
        ),
      ),
      mobile: (_) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 50),
        child: Column(
          children: [
            LineBoxWidget(title: title, color: titleBorderColor),
            const SizedBox(height: 50),
            ...projects
                .map((p) => _buildMobileProject(context, p))
                .toList(),
          ],
        ),
      ),
    );
  }

  Widget _buildTechChips(List<String> techStack) {
    if (techStack.isEmpty) return const SizedBox.shrink();
    return Padding(
      padding: const EdgeInsets.only(top: 12),
      child: Wrap(
        spacing: 6,
        runSpacing: 6,
        children: techStack
            .map((tech) => Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                  decoration: BoxDecoration(
                    gradient: AppColors.primaryGradient,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    tech,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 11,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ))
            .toList(),
      ),
    );
  }

  Widget _buildDesktopProject(BuildContext context, Project project) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24),
      child: HoverScale(
        scale: 1.01,
        child: Container(
          width: MediaQuery.of(context).size.width * .7,
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: AppColors.cardBackground,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: AppColors.cardShadowColor,
                blurRadius: 12,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * .12,
                child: project.image.isEmptyOrNull
                    ? Container(
                        height: 100,
                        decoration: BoxDecoration(
                          color: AppColors.primary.withValues(alpha: 0.1),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          Icons.apps_rounded,
                          color: AppColors.primary.withValues(alpha: 0.5),
                          size: 40,
                        ),
                      )
                    : GestureDetector(
                        onTap: project.playStore.isEmptyOrNull
                            ? null
                            : () => launchUrl(Uri.parse(project.playStore!)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.network(
                            project.image!,
                            webHtmlElementStrategy:
                                WebHtmlElementStrategy.prefer,
                            loadingBuilder: (context, child, progress) {
                              if (progress == null) return child;
                              return ShimmerPlaceholder(
                                width:
                                    MediaQuery.of(context).size.width * .12,
                                height: 100,
                              );
                            },
                            errorBuilder: (context, error, stack) =>
                                Container(
                              height: 100,
                              decoration: BoxDecoration(
                                color: AppColors.primary.withValues(alpha: 0.1),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Icon(
                                Icons.broken_image_outlined,
                                color: AppColors.primary.withValues(alpha: 0.5),
                                size: 40,
                              ),
                            ),
                          ),
                        ),
                      ),
              ),
              const SizedBox(width: 24),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppStyle.title(project.name),
                    const SizedBox(height: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: project.bullets
                          .map((e) => Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 4),
                                child: AppStyle.desc('•  $e'),
                              ))
                          .toList(),
                    ),
                    _buildTechChips(project.techStack),
                    const SizedBox(height: 16),
                    StoreButton(project: project),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMobileProject(BuildContext context, Project project) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Container(
        width: MediaQuery.of(context).size.width * .8,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: AppColors.cardBackground,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: AppColors.cardShadowColor,
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          children: [
            if (!project.image.isEmptyOrNull)
              SizedBox(
                width: MediaQuery.of(context).size.width * .25,
                child: GestureDetector(
                  onTap: project.playStore.isEmptyOrNull
                      ? null
                      : () => launchUrl(Uri.parse(project.playStore!)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.network(
                      project.image!,
                      webHtmlElementStrategy: WebHtmlElementStrategy.prefer,
                      loadingBuilder: (context, child, progress) {
                        if (progress == null) return child;
                        return ShimmerPlaceholder(
                          width: MediaQuery.of(context).size.width * .25,
                          height: 80,
                        );
                      },
                      errorBuilder: (context, error, stack) => Container(
                        height: 80,
                        decoration: BoxDecoration(
                          color: AppColors.primary.withValues(alpha: 0.1),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          Icons.broken_image_outlined,
                          color: AppColors.primary.withValues(alpha: 0.5),
                          size: 30,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            const SizedBox(height: 16),
            AppStyle.title(project.name),
            const SizedBox(height: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: project.bullets
                  .map((e) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4),
                        child: AppStyle.desc('•  $e'),
                      ))
                  .toList(),
            ),
            _buildTechChips(project.techStack),
            const SizedBox(height: 16),
            StoreButton(project: project),
          ],
        ),
      ),
    );
  }
}
