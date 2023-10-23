import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants.dart';

class MyOutlineButton extends GetResponsiveView {
  MyOutlineButton({
    Key? key,
    required this.imageSrc,
    required this.text,
    required this.press,
  }) : super(key: key);

  final String imageSrc, text;
  final Function()? press;

  @override
  Widget builder() {
    return FittedBox(
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          padding: EdgeInsets.symmetric(
            vertical: kDefaultPadding,
            horizontal: kDefaultPadding * 2.5,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          // borderSide: BorderSide(color: Color(0xFFEDEDED)),
        ),
        onPressed: press,
        child: screen.isPhone
            ? Column(
                children: [
                  Image.asset(
                    imageSrc,
                    height: 40,
                  ),
                  SizedBox(width: kDefaultPadding),
                  Text(text)
                ],
              )
            : Row(
                children: [
                  Image.asset(
                    imageSrc,
                    height: 40,
                  ),
                  SizedBox(width: kDefaultPadding),
                  Text(text)
                ],
              ),
      ),
    );
  }
}
