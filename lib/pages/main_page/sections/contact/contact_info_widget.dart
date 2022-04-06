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
        padding: const EdgeInsets.symmetric(
          vertical: 8.0,
          horizontal: 12.0,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('$title:'),
            SizedBox(width: 12.0),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.arrow_right,
                  color: primaryColor,
                ),
                Container(
                  // constraints:BoxCons
                  child: onTap == null
                      ? SelectableText(
                          info,
                        )
                      : Text(
                          info,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          maxLines: 1,
                        ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
