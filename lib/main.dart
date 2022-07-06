import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({required this.title, super.key});

  // Fields in a Widget subclass are always marked "final".

  final Widget title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.0, // in logical pixels
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      // decoration: BoxDecoration(color: Colors.blue[500]),
      // Row is a horizontal, linear layout.
      child: Row(
        children: [
          const Center(
              child:IconButton(
                icon: Icon(
                  Icons.circle,
                  size: 37.0,
                  color: const Color(0xFFB8D4D1),
                ),
                tooltip: 'Navigation menu',
                onPressed: null, // null disables the button
            )
          ),
          // Expanded expands its child
          // to fill the available space.
          Expanded(
            child: title,
          ),
          const Center(
            child: IconButton(
              icon: Icon(
                  Icons.square,
                  size: 37.0,
                  color: Colors.black,
              ),
              tooltip: 'Search',
              onPressed: null,
            )
          ),
        ],
      ),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.black, width:0.1),
        ),
      ),
    );
  }
}

class ModifyBar extends StatelessWidget {
  const ModifyBar({super.key});


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0, // in logical pixels
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      margin: const EdgeInsets.only(top: 7.0),
      child: Row(
        children: [
          Expanded(
            child:Container(
              padding: const EdgeInsets.only(right: 30.0),
              alignment: Alignment.centerRight,
              child:Text(
                "AUJOURD'HUI",
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              )
            ),
          ),
          // Expanded expands its child
          // to fill the available space.
          Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size.zero,
                  padding: const EdgeInsets.symmetric(
                      vertical: 4, horizontal: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                child:Text(
                  'MODIFIER',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                onPressed: null,
              )
          ),
        ],
      ),
    );
  }
}

class MyScaffold extends StatelessWidget {
  const MyScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    // Material is a conceptual piece
    // of paper on which the UI appears.
    return Material(
      // Column is a vertical, linear layout.
      child: Column(
        children: [
          MyAppBar(
            title: Center(
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(0, 7, 0, 0),
                    child:Text(
                      'fitbit',
                      style: TextStyle(
                        fontSize: 28,
                        color: Colors.black,
                      ),
                    )
                  )
                ),
             ),
          ),
          ModifyBar()
        ],
      ),
    );
  }
}

void main() {
  runApp(
    const MaterialApp(
      title: 'My app', // used by the OS task switcher
      home: SafeArea(
        child: MyScaffold(),
      ),
    ),
  );
}