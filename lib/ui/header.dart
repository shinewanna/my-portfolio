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
          mobile: (_) => _MobileMenuButton(
            onAbout: onAbout,
            onExperience: onExperience,
            onSkills: onSkills,
            onProjects: onProjects,
            onContact: onContact,
          ),
        ),
      ],
    );
  }
}

class _MobileMenuButton extends StatelessWidget {
  final VoidCallback? onAbout;
  final VoidCallback? onExperience;
  final VoidCallback? onSkills;
  final VoidCallback? onProjects;
  final VoidCallback? onContact;

  const _MobileMenuButton({
    this.onAbout,
    this.onExperience,
    this.onSkills,
    this.onProjects,
    this.onContact,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: IconButton(
        icon: Icon(Icons.menu, color: AppColors.text),
        onPressed: () {
          showModalBottomSheet(
            context: context,
            backgroundColor: Colors.transparent,
            useRootNavigator: true,
            builder: (_) => Container(
              decoration: BoxDecoration(
                color: Theme.of(context).scaffoldBackgroundColor,
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(20)),
              ),
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 40,
                    height: 4,
                    margin: const EdgeInsets.only(bottom: 16),
                    decoration: BoxDecoration(
                      color: AppColors.primary.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                  _MobileMenuItem(
                      label: 'About',
                      icon: Icons.person_outline,
                      onTap: () {
                        Navigator.pop(context);
                        onAbout?.call();
                      }),
                  _MobileMenuItem(
                      label: 'Experience',
                      icon: Icons.work_outline,
                      onTap: () {
                        Navigator.pop(context);
                        onExperience?.call();
                      }),
                  _MobileMenuItem(
                      label: 'Skills',
                      icon: Icons.code,
                      onTap: () {
                        Navigator.pop(context);
                        onSkills?.call();
                      }),
                  _MobileMenuItem(
                      label: 'Projects',
                      icon: Icons.apps_rounded,
                      onTap: () {
                        Navigator.pop(context);
                        onProjects?.call();
                      }),
                  _MobileMenuItem(
                      label: 'Contact',
                      icon: Icons.mail_outline,
                      onTap: () {
                        Navigator.pop(context);
                        onContact?.call();
                      }),
                  const SizedBox(height: 8),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class _MobileMenuItem extends StatelessWidget {
  final String label;
  final IconData icon;
  final VoidCallback onTap;

  const _MobileMenuItem({
    required this.label,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: AppColors.primary),
      title: Text(
        label,
        style: TextStyle(
          color: AppColors.text,
          fontWeight: FontWeight.w600,
          fontSize: 16,
        ),
      ),
      onTap: onTap,
      contentPadding: const EdgeInsets.symmetric(horizontal: 24),
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
      cursor: SystemMouseCursors.click,
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
