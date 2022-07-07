import 'package:flutter/material.dart';
import 'package:formation_flutter/widgets/dashboard.dart';

class FitbitScaffold extends StatelessWidget {
  const FitbitScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      elevation: 0,
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(0.0),
        child: Container(
          alignment: Alignment.center,
          height: 0.4,
          color: const Color(0xFFCBC9C9),
        ),
      ),
      backgroundColor: Colors.white,
      leading: Center(
          child:IconButton(
            icon: Icon(
              Icons.circle,
              size: 31.0,
              color: const Color(0xFFB2DCD9),
            ),
            tooltip: 'Navigation menu',
            onPressed: () => {},// null disables the button
          )
      ),
      title: Center(
        child: Align(
          alignment: Alignment.center,
          child: Container(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Image.asset(
              'assets/fitbit.jpg',
              height: 100,
              width: 90,
            ),
          )
        ),
      ),
      actions: [
        Center(
            child: IconButton(
              icon: Icon(
                Icons.square,
                size: 31.0,
                color: Colors.black,
              ),
              tooltip: 'Search',
              onPressed: () => {},
            )
        ),
      ],
    ),
      body: Column(
          children: [
           Column(
                children:[
                  ModifyBar(),
                  BigCircle(),
                ]
              ),
            StatRow(),
            Options(),
            Footer(),
          ],
        ),
    );
  }
}