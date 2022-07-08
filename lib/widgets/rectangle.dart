import 'package:flutter/material.dart';

class Rectangle extends StatelessWidget {
  const Rectangle({
    required this.icon,
    required this.text1,
    required this.text2,
    required this.color,
    super.key
  });

  final Icon icon;
  final String text1;
  final String text2;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 90,
      margin: EdgeInsets.only(bottom: 18),
      padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
      decoration: new BoxDecoration(
        borderRadius: new BorderRadius.circular(16.0),
        boxShadow: [
          BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 0.2,
          blurRadius: 7,
          offset: Offset(0, 0.2), // changes position of shadow
          ),
        ],
        color: Colors.white,
      ),
      child: ListTile(
          leading: CircleAvatar(
            radius: 24,
            backgroundColor: color,
            child: CircleAvatar(
                radius:22,
                backgroundColor: Colors.white,
                child: icon
            ),
          ),
          title: Text(
            text1,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),

          subtitle: Text(
            text2,
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w400,
              color: const Color(0xFF84848A),
            ),
          ),
          trailing: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.add_sharp,
              size: 42,
              color: const Color(0xFF84848A),
            ),
          ),
          onTap: () {},
        ),
    );
  }

}