import 'package:flutter/material.dart';

import 'glass_content.dart';

class LogoAndBlurBox extends StatelessWidget {
  const LogoAndBlurBox({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset("assets/images/Logo.png"),
        Spacer(),
        GlassContent(size: size),
        Spacer(flex: 3),
      ],
    );
  }
}
