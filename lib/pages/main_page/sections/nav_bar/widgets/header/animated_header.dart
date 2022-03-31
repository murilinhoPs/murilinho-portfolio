import 'package:flutter/material.dart';
import 'package:murilinho_portfolio/assets_path.dart';

class AnimatedHeader extends StatelessWidget {
  const AnimatedHeader({
    Key? key,
    required this.myName,
    required this.topSpacing,
    required this.avatarRadius,
    required this.nameFontSize,
    required this.roleScale,
  }) : super(key: key);
  final String myName;
  final double topSpacing;
  final double avatarRadius;
  final double nameFontSize;
  final double roleScale;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: topSpacing),
      child: Column(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(
              Assets.meCartoon,
            ),
            radius: avatarRadius,
          ),
          const SizedBox(
            height: 12.0,
          ),
          Text(
            myName,
            style: TextStyle(
              fontSize: nameFontSize,
            ),
          ),
          // if (roleScale != 0)
          AnimatedAlign(
            duration: Duration(milliseconds: 200),
            curve: Curves.linear,
            alignment: AlignmentDirectional.center,
            widthFactor: roleScale,
            child: Column(
              children: [
                SizedBox(
                  height: 12.0 * roleScale,
                ),
                Text(
                  'Game and Mobile dev',
                  style: TextStyle(
                    fontSize: 12 * roleScale,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 16.0,
          ),
        ],
      ),
    );
  }
}
