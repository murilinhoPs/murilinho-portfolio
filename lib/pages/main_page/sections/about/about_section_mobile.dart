import 'package:flutter/material.dart';
import 'package:murilinho_portfolio/utils/assets_path.dart';
import 'package:murilinho_portfolio/utils/constants.dart';
import 'package:murilinho_portfolio/utils/helpers.dart';
import 'package:murilinho_portfolio/utils/strings.dart';

class AboutSectionMobile extends StatelessWidget {
  const AboutSectionMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final experiences = experiencesAbout
        .map(
          (exp) => Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 4.0,
            ),
            child: Text('$exp,'),
          ),
        )
        .toList();

    return Column(
      children: [
        Text(
          Strings.aboutTitle,
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.6,
          ),
        ),
        SizedBox(height: 16.0),
        Image.asset(
          Assets.meImgFull,
          height: 280,
        ),
        SizedBox(
          height: 32,
        ),
        Text(
          Strings.aboutMeDescription,
          softWrap: true,
          textAlign: TextAlign.start,
          style: TextStyle(
            height: 1.2,
          ),
        ),
        SizedBox(height: 12.0),
        Divider(color: Colors.grey[600]),
        SizedBox(height: 12.0),
        Wrap(
          crossAxisAlignment: WrapCrossAlignment.start,
          runSpacing: 12,
          spacing: 12,
          children: [
            Text(
              Strings.aboutMeExperience,
              style: TextStyle(
                fontSize: 16,
                decoration: TextDecoration.underline,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(width: 12.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: experiences,
              ),
            ),
          ],
        ),
        SizedBox(height: 24.0),
        MaterialButton(
          hoverColor: primaryColor.withAlpha(150),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
            side: BorderSide(
              color: primaryColor,
              width: 2.0,
            ),
          ),
          padding: EdgeInsets.all(12.0),
          onPressed: () => launchURL(resumeLink),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 4.0,
            ),
            child: Text(Strings.resume),
          ),
        ),
      ],
    );
  }
}
