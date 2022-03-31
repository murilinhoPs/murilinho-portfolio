import 'package:flutter/material.dart';
import 'package:murilinho_portfolio/assets_path.dart';
import 'package:murilinho_portfolio/constants.dart';
import 'package:murilinho_portfolio/strings.dart';
import 'package:murilinho_portfolio/widgets/image_fade_widget.dart';
import 'package:murilinho_portfolio/widgets/social_icon_buttons/social_icon_button_desktop.dart';

class HomeDesktop extends StatelessWidget {
  const HomeDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 24.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  Strings.homeSubtitle,
                  style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.6,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  Strings.homeIntro,
                  style: TextStyle(
                    fontSize: 28,
                    letterSpacing: 1.2,
                  ),
                ),
                SizedBox(height: 24.0),
                SizedBox(
                  width: 400,
                  child: Text(
                    Strings.homeMiniBio,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: List.generate(
                    socialLinksIcons.length,
                    (index) => SocialIconButtonDesktop(
                      icon: socialLinksIcons[index],
                      socialLink: socialLinks[index],
                      height: 24.0,
                      padding: EdgeInsets.only(
                        right: 12.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          ImageFadeWidget(
            imagePath: Assets.mePortrait,
            height: 560,
          ),
        ],
      ),
    );
  }
}
