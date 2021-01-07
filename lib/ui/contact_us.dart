import 'dart:io';

import 'package:flutter/material.dart';
import 'package:mailto/mailto.dart';
import 'package:myporfolio/utils/app_utils.dart';
import 'package:myporfolio/widget/line_box_widget.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';
import '../config/constants.dart';
import '../config/styles.dart';
import '../config/colors.dart';
import '../utils/extensions.dart';

class ContactUs extends StatefulWidget {
  @override
  _ContactUsState createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  final _formKey = GlobalKey<FormState>();

  final _nameController = TextEditingController(),
      _emailController = TextEditingController(),
      _contentController = TextEditingController();

  Widget contacts() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildContactInfo(
            Icons.email,
            'Mail:',
            AppConstants.mail,
          ),
          const SizedBox(height: 20),
          _buildContactInfo(
            Icons.phone,
            'Phone:',
            AppConstants.phone,
          ),
          const SizedBox(height: 20),
          _buildContactInfo(
            Icons.location_on,
            'Location:',
            AppConstants.location,
          ),
        ],
      );

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 100,
        ),
        child: Column(
          children: [
            LineBoxWidget(
              title: 'GET IN TOUCH',
              color: AppColors.primary,
            ),
            const SizedBox(height: 50),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * .15,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: contacts(),
                  ),
                  Expanded(
                    child: _buildContactForm(context),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      mobile: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 100,
        ),
        child: Column(
          children: [
            LineBoxWidget(
              title: 'GET IN TOUCH',
              color: AppColors.primary,
            ),
            const SizedBox(height: 50),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * .15,
              ),
              child: Column(
                children: [
                  contacts(),
                  const SizedBox(height: 50),
                  _buildContactForm(context),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildContactInfo(IconData icon, String title, String content) {
    return FittedBox(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //   AppIcon(imagePath, color: AppColors.black.withOpacity(.7), size: 20),
          Icon(icon),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppUtil.withSubtitleStyle(title),
              const SizedBox(height: 5),
              AppUtil.withDescStyle(content),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildContactForm(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppUtil.withSubtitleStyle('Have Something To Write?'),
        const SizedBox(height: 25),
        Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  // Expanded(
                  //   child: TextFormField(
                  //     validator: (text) {
                  //       return (text.isValidName())
                  //           ? null
                  //           : 'Please insert valid name!';
                  //     },
                  //     decoration: InputDecoration(
                  //       hintText: 'Your Name',
                  //       border: OutlineInputBorder(),
                  //     ),
                  //   ),
                  // ),
                  //  const SizedBox(width: 15),

                  Expanded(
                    child: TextFormField(
                      validator: (text) {
                        return (text.isValidEmail)
                            ? null
                            : 'Please insert valid email!';
                      },
                      decoration: InputDecoration(
                        hintText: 'Your Email',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              // TextFormField(
              //   minLines: 3,
              //   maxLines: 10,
              //   validator: (text) {
              //     return (text.isValidName(minLength: 10))
              //         ? null
              //         : 'Please insert valid message!, at least 10 characters';
              //   },
              //   decoration: InputDecoration(
              //     hintText: 'Your Message',
              //     border: OutlineInputBorder(),
              //   ),
              // ),
              const SizedBox(height: 20),
              RaisedButton(
                elevation: 0,
                hoverElevation: 0,
                focusElevation: 0,
                highlightElevation: 0,
                hoverColor: AppColors.secondary,
                color: AppColors.primary,
                textColor: Colors.white,
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                onPressed: _sendMail,
                child: Text('Send'),
              ),
            ],
          ),
        )
      ],
    );
  }

  void _sendMail() async {
    bool isValidForm = _formKey.currentState.validate();
    if (!isValidForm) return;

    final mailto = Mailto(
      to: [AppConstants.mail],
      subject: _nameController.text.trim(),
      body: _contentController.text.trim(),
    );
    await launch('$mailto');
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _contentController.dispose();
    super.dispose();
  }
}
