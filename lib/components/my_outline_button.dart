import 'package:flutter/material.dart';

import '../constants.dart';

class MyOutlineButton extends StatelessWidget {
  const MyOutlineButton({
    Key key,
    this.imageSrc,
    this.text,
    this.press,
  }) : super(key: key);

  final String imageSrc, text;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: TextButton(
        style: ButtonStyle(
          padding: MaterialStateProperty.all(EdgeInsets.symmetric(
            vertical: kDefaultPadding,
            horizontal: kDefaultPadding * 2.5,
          )),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          )),
          side: MaterialStateProperty.all(BorderSide(color: Color(0xFFEDEDED))),
        ),
        onPressed: press,
        child: Row(
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
