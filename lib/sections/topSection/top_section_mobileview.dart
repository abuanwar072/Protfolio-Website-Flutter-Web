import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_app/sections/topSection/components/logo_blur_box.dart';
import 'package:web_app/sections/topSection/components/person_pic.dart';

class TopSectionMobile extends GetResponsiveView {
  TopSectionMobile({super.key});

  @override
  Widget builder() {
    return Stack(
      children: [
        Container(
          child: Padding(
            padding: EdgeInsets.all(Get.width * 0.05),
            child: LogoAndBlurBox(size: Get.size),
          ),
        ),
        Positioned(
          right: 0,
          bottom: 0,
          child: Container(
            height: Get.height * 0.6,
            child: PersonPic(),
          ),
        ),
      ],
    );
  }
}
