import 'package:flutter/material.dart';
import 'package:lojinha/src/config/custom_colors.dart';

class AppNameWidget extends StatelessWidget {

  final Color? greenTitleColor;
  final double textSize;

  const AppNameWidget({
    Key? key,
    this.greenTitleColor,
    this.textSize = 30,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        style:  TextStyle(
          fontSize: textSize,
        ),
        children: [
          TextSpan(
            text: 'Brechó ',
            style: TextStyle(
              color: greenTitleColor ?? CustomColors.customSwatchColor,
            ),
          ),
          TextSpan(
            text: 'da Lú',
            style: TextStyle(
              color: CustomColors.customContrastColor,
            ),
          ),
        ],
      ),
    );
  }
}