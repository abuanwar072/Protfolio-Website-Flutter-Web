import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants.dart';

class ExperienceCard extends GetResponsiveView {
  ExperienceCard({
    Key? key,
    required this.numOfExp,
  }) : super(key: key);

  final String numOfExp;

  @override
  Widget builder() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      padding: EdgeInsets.all(kDefaultPadding),
      height: 240,
      width: 255,
      decoration: BoxDecoration(
        color: Color(0xFFF7E8FF),
        borderRadius: BorderRadius.circular(10),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Color(0xFFEDD2FC),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 3),
              blurRadius: 6,
              color: Color(0xFFA600FF).withOpacity(0.25),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Text(
                  numOfExp,
                  style: TextStyle(
                    fontSize: screen.isPhone ? 20 : 60,
                    fontWeight: FontWeight.bold,
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 6
                      ..color = Color(0xFFDFA3FF).withOpacity(0.5),
                    shadows: [
                      BoxShadow(
                        offset: Offset(0, 5),
                        blurRadius: 10,
                        color: Color(0xFFA600FF).withOpacity(0.5),
                      ),
                    ],
                  ),
                ),
                Text(
                  numOfExp,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: screen.isPhone ? 60 : 100,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            SizedBox(height: kDefaultPadding / 2),
            Text(
              "Years of Experience",
              style: TextStyle(
                color: Color(0xFFA600FF),
              ),
            )
          ],
        ),
      ),
    );
  }
}
