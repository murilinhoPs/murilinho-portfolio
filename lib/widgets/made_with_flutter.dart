import 'package:flutter/material.dart';
import 'package:murilinho_portfolio/utils/constants.dart';
import 'package:murilinho_portfolio/utils/strings.dart';

class MadeWithFlutter extends StatelessWidget {
  const MadeWithFlutter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: darkerBg,
        border: Border(
          top: BorderSide(
            width: 0.4,
            color: Colors.grey[600]!,
          ),
        ),
      ),
      alignment: Alignment.center,
      padding: const EdgeInsets.only(
        top: 8.0,
        bottom: 12.0,
      ),
      child: Text(
        Strings.madeWithFlutter,
        style: TextStyle(
          letterSpacing: 1.2,
          fontSize: 12,
        ),
      ),
    );
  }
}
