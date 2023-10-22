import 'dart:js';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_app/components/section_title.dart';
import 'package:web_app/constants.dart';
import 'package:web_app/models/Feedback.dart';

import 'components/feedback_card.dart';

class FeedbackSection extends GetResponsiveView {
  @override
  Widget builder() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: kDefaultPadding * 2.5),
      constraints: BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          SectionTitle(
            title: "Feedback Received",
            subTitle: "Client’s testimonials that inspired me a lot",
            color: Color(0xFF00B1FF),
          ),
          SizedBox(height: kDefaultPadding),
          screen.isDesktop
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(
                    feedbacks.length,
                    (index) => FeedbackCard(index: index),
                  ),
                )
              : SizedBox(
                  height: Get.width,
                  width: Get.width,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: feedbacks.length,
                      itemBuilder: (context, index) {
                        return FeedbackCard(index: index);
                      }),
                )
        ],
      ),
    );
  }
}
