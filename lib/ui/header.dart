import 'package:flutter/material.dart';
import 'package:myporfolio/config/colors.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:velocity_x/velocity_x.dart';

class Header extends StatelessWidget {
  final VoidCallback? onAbout;
  final VoidCallback? onExperience;
  final VoidCallback? onSkills;
  final VoidCallback? onProjects;
  final VoidCallback? onContact;

  const Header({
    Key? key,
    this.onAbout,
    this.onExperience,
    this.onSkills,
    this.onProjects,
    this.onContact,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      backgroundColor:
          Theme.of(context).scaffoldBackgroundColor.withOpacity(0.95),
      surfaceTintColor: Colors.transparent,
      title: Padding(
        padding: const EdgeInsets.only(left: 25.0),
        child: Row(
          children: [
            'Portfol'.text.color(AppColors.text).bold.xl3.make(),
            'i'.text.bold.color(AppColors.primary).xl3.make(),
            'o'.text.bold.color(AppColors.secondary).xl3.make(),
          ],
        ),
      ),
      actions: [
        ScreenTypeLayout.builder(
          desktop: (_) => Padding(
            padding: const EdgeInsets.only(right: 40),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                _NavItem(label: 'About', onTap: onAbout),
                _NavItem(label: 'Experience', onTap: onExperience),
                _NavItem(label: 'Skills', onTap: onSkills),
                _NavItem(label: 'Projects', onTap: onProjects),
                _NavItem(label: 'Contact', onTap: onContact),
              ],
            ),
          ),
          mobile: (_) => const SizedBox.shrink(),
        ),
      ],
    );
  }
}

class _NavItem extends StatefulWidget {
  final String label;
  final VoidCallback? onTap;

  const _NavItem({required this.label, this.onTap});

  @override
  State<_NavItem> createState() => _NavItemState();
}

class _NavItemState extends State<_NavItem> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: GestureDetector(
        onTap: widget.onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                widget.label,
                style: TextStyle(
                  color: _isHovered ? AppColors.primary : AppColors.text,
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 2),
              AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                height: 2,
                width: _isHovered ? 20 : 0,
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(1),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
