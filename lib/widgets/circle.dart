import 'package:flutter/material.dart';

class StatCircle extends StatelessWidget {
  const StatCircle({
    required this.icon,
    required this.text1,
    required this.text2,
    super.key});

  final Icon icon;
  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          CircleAvatar(
            radius: 19,
            backgroundColor: const Color(0xFFB2DCD9),
            child: CircleAvatar(
                radius:16,
                backgroundColor: Colors.white,
                child: icon
            ),
          ),
          Container(
              padding: EdgeInsets.only(top:15),
              child:Center(
                  child: Text(
                    text1,
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  )
              )
          ),
          Center(
              child: Text(
                text2,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFF84848A),
                ),
              )
          )
        ]
    );
  }
}