import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants.dart';
import 'default_button.dart';

class HireMeCard extends GetResponsiveView {
  HireMeCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget builder() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          padding: EdgeInsets.all(kDefaultPadding * 2),
          // constraints: BoxConstraints(maxWidth: 1110),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [kDefaultShadow],
          ),
          child: screen.isDesktop ? HireMeDesktop() : HireMeMobile()),
    );
  }
}

class HireMeDesktop extends StatelessWidget {
  const HireMeDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          "assets/images/email.png",
          height: 80,
          width: 80,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: SizedBox(
            height: 80,
            child: VerticalDivider(),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Starting New Project?",
              style: TextStyle(fontSize: 42, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: kDefaultPadding / 2),
            Text(
              "Get an estimate for the new project",
              style: TextStyle(fontWeight: FontWeight.w200),
            )
          ],
        ),
        DefaultButton(
          text: "Hire Me!",
          imageSrc: "assets/images/hand.png",
          press: () {},
        )
      ],
    );
  }
}

class HireMeMobile extends StatelessWidget {
  const HireMeMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width,
      height: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Expanded(
                flex: 0,
                child: Image.asset(
                  "assets/images/email.png",
                  height: 40,
                  width: 40,
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Starting New Project?",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: kDefaultPadding / 2),
                      Text(
                        "Get an estimate for the new project",
                        style: TextStyle(fontWeight: FontWeight.w200),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 0,
                child: DefaultButton(
                  text: "Hire Me!",
                  imageSrc: "assets/images/hand.png",
                  press: () {},
                ),
              ),
            ],
          ),
          // SizedBox(
          //   height: 20,
          // ),
          // Row(
          //   children: [
          //     Expanded(child: Container()),

          //     Expanded(child: Container()),
          //   ],
          // )
        ],
      ),
    );
  }
}
