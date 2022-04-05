import 'package:flutter/material.dart';
import 'package:murilinho_portfolio/pages/main_page/sections/contact/contact_section_desktop.dart';
import 'package:murilinho_portfolio/pages/main_page/sections/contact/contact_section_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: ContactSectionDesktop(),
      mobile: ContactSectionMobile(),
    );
  }
}
