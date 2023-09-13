import 'package:flutter/material.dart';
import 'package:food/data/colors.dart';
import 'package:food/data/textFont.dart';
import 'package:food/localisation/en/strings.dart';

class CardButton extends StatelessWidget {
   CardButton({
    super.key,
    required this.buttonText
  });

  String buttonText;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: ColorWidgets().buttonBackground,
      ),
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Text(
          buttonText,
          textAlign: TextAlign.center,
          style: TextStyle(
              letterSpacing: 1,
              color: ColorWidgets().authCardBackground,
              fontWeight: FontWeight.bold,
              fontSize: TextFonts().loginButtonText),
        ),
      ),
    );
  }
}