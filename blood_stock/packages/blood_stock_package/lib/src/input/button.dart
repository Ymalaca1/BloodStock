import 'package:common_package/common.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final VoidCallback onTap;
  final String text;

  const Button({Key? key, required this.onTap, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: Spacing.x5,
        decoration: BoxDecoration(
          color: ColorPalette.primary,
          borderRadius: BorderRadius.circular(5),
          border: Border.fromBorderSide(
            BorderSide(color: ColorPalette.primary),
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(color: ColorPalette.secundary),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
