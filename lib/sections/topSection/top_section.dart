import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:web_app/constants.dart';
import 'package:web_app/sections/topSection/top_section_mobileview.dart';

import 'components/logo_blur_box.dart';
import 'components/menu.dart';
import 'components/person_pic.dart';
import 'top_section_desktopview.dart';

class TopSection extends GetResponsiveView {
  @override
  Widget builder() {
    return Container(
        alignment: Alignment.center,
        constraints: BoxConstraints(
            maxHeight: screen.isDesktop ? 900 : Get.height, minHeight: 700),
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/images/background.png"),
          ),
        ),
        child: screen.isDesktop ? TopSectionDesktop() : TopSectionMobile());
  }
}
