import 'package:flutter/material.dart';

class ImageFadeWidget extends StatelessWidget {
  const ImageFadeWidget({
    Key? key,
    required this.imagePath,
    required this.height,
  }) : super(key: key);
  final String imagePath;
  final double height;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (rect) {
        return LinearGradient(
          stops: [0.0, 0.9],
          begin: Alignment.center,
          end: Alignment.bottomCenter,
          colors: [
            Colors.black,
            Colors.transparent,
          ],
        ).createShader(rect);
      },
      blendMode: BlendMode.dstIn,
      child: Opacity(
        opacity: 0.7,
        child: Image.asset(
          imagePath,
          height: height,
        ),
      ),
    );
  }
}
