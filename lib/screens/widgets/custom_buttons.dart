import 'package:flutter/material.dart';

class CustomButtons extends StatelessWidget {
  final String buttonText;
  final Color buttonBGColor;
  final Color btnForgratedColor;

  const CustomButtons({
    super.key,
    required this.buttonText,
    required this.buttonBGColor,
    required this.btnForgratedColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        foregroundColor: btnForgratedColor,
        backgroundColor: buttonBGColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
      ),
      onPressed: () {},
      child: Text(buttonText),
    );
  }
}
