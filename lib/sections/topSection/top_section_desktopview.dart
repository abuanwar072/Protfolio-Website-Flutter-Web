import 'package:flutter/material.dart';

import '../../constants.dart';
import 'components/logo_blur_box.dart';
import 'components/menu.dart';
import 'components/person_pic.dart';

class TopSectionDesktop extends StatelessWidget {
  const TopSectionDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(top: kDefaultPadding),
      width: 1200,
      child: Stack(
        children: [
          LogoAndBlurBox(size: size),
          Positioned(
            bottom: 0,
            right: 0,
            child: PersonPic(),
          ),
          Positioned(
            bottom: 0,
            child: Menu(),
          ),
        ],
      ),
    );
  }
}
