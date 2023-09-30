import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText(this.cText, this.cSize, this.cWeight, {super.key});

  final String cText;
  final double cSize;
  final bool cWeight;
  @override
  Widget build(BuildContext context) {
    return Text(
      cText,
      style: TextStyle(
        fontSize: cSize,
        color: Colors.white,
        fontWeight: cWeight ? FontWeight.bold : FontWeight.normal,
      ),
    );
  }
}
