import 'package:flutter/material.dart';

class FooterOption extends StatelessWidget {
  const FooterOption({
    required this.icon,
    required this.text,
    required this.textColor,
    super.key});

  final Icon icon;
  final String text;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          icon,
          Center(
            child: Text(
              text,
              style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w400,
                color: textColor,
              ),
            )
          )
        ]
      )
    );
  }
}