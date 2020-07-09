import 'package:flutter/material.dart';

import '../../../constants.dart';

class AboutSectionText extends StatelessWidget {
  const AboutSectionText({
    Key key,
    this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Text(
        text,
        style: TextStyle(
            fontWeight: FontWeight.w200, color: kTextColor, height: 2),
      ),
    );
  }
}
