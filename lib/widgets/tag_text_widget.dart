import 'package:flutter/material.dart';

class TagTextWidget extends StatelessWidget {
  const TagTextWidget({
    Key? key,
    required this.text,
    required this.backgroundColor,
  }) : super(key: key);
  final String text;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Material(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(
            16.0,
          ),
        ),
      ),
      color: backgroundColor,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: 36,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 12.0,
            vertical: 4.0,
          ),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              height: 1.4,
              fontSize: 14,
              letterSpacing: 1.6,
              fontWeight: FontWeight.w500,
              color: Colors.grey[200],
            ),
          ),
        ),
      ),
    );
  }
}
