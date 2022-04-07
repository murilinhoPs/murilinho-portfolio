import 'package:flutter/material.dart';
import 'package:murilinho_portfolio/pages/main_page/sections/contact/contact_info_widget.dart';
import 'package:murilinho_portfolio/utils/constants.dart';
import 'package:murilinho_portfolio/utils/helpers.dart';
import 'package:murilinho_portfolio/utils/strings.dart';

class ContactSectionMobile extends StatelessWidget {
  const ContactSectionMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          Strings.contactTitle,
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.6,
          ),
        ),
        ContactInfoWidget(
          title: Strings.location,
          info: Strings.city,
        ),
        ContactInfoWidget(
          title: emailTitle,
          info: emailLink,
        ),
        ContactInfoWidget(
          title: linkedinTitle,
          info: linkedinLink.replaceAll('https://', ''),
          onTap: () => launchURL(linkedinLink),
        ),
      ],
    );
  }
}
