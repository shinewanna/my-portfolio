import 'package:flutter/material.dart';
import 'package:mailto/mailto.dart';
import 'package:myporfolio/config/colors.dart';
import 'package:myporfolio/config/constants.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';

class CtaSection extends StatelessWidget {
  const CtaSection({Key? key}) : super(key: key);

  void _sendMail() async {
    final mailto = Mailto(to: [AppConstants.mail]);
    await launch('$mailto');
  }

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (_) => _buildContent(36, 18),
      mobile: (_) => _buildContent(24, 14),
    );
  }

  Widget _buildContent(double titleSize, double descSize) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 40),
      padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 40),
      decoration: BoxDecoration(
        gradient: AppColors.primaryGradient,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Text(
            "Let's Work Together",
            style: TextStyle(
              fontSize: titleSize,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          Text(
            'Have a project in mind? Let\'s create something amazing.',
            style: TextStyle(
              fontSize: descSize,
              color: Colors.white70,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 30),
          OutlinedButton(
            onPressed: _sendMail,
            style: OutlinedButton.styleFrom(
              side: const BorderSide(color: Colors.white, width: 2),
              padding:
                  const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            child: const Text(
              'Get In Touch',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
