import 'package:flutter/material.dart';
import 'package:murilinho_portfolio/utils/constants.dart';

class ContactInfoWidget extends StatelessWidget {
  const ContactInfoWidget({
    Key? key,
    required this.title,
    required this.info,
    this.onTap,
  }) : super(key: key);
  final String title;
  final String info;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('$title:'),
            SizedBox(width: 16.0),
            Row(
              children: [
                Icon(
                  Icons.arrow_right,
                  color: primaryColor,
                ),
                onTap == null
                    ? SelectableText(
                        info,
                      )
                    : Text(
                        info,
                        softWrap: true,
                        overflow: TextOverflow.ellipsis,
                      )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
