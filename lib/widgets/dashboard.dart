import 'package:flutter/material.dart';
import 'package:formation_flutter/widgets/circle.dart';
import 'package:formation_flutter/widgets/rectangle.dart';
import 'package:formation_flutter/widgets/footeroption.dart';

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
                padding: const EdgeInsets.only(right: 56.0),
                alignment: Alignment.centerRight,
                child: const Text(
                  "AUJOURD'HUI",
                  style: TextStyle(
                    fontSize: 14,
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
                  elevation: 0.5,
                  primary: const Color(0xFFEEEDED),
                  minimumSize: Size.zero,
                  padding: const EdgeInsets.symmetric(
                      vertical: 6, horizontal: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                child:Text(
                  'MODIFIER',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF1E616B),
                  ),
                ),
                onPressed: () {},
              )
          ),
        ],
      ),
    );
  }
}

class BigCircle extends StatelessWidget {
  const BigCircle({super.key});


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 40.0),
      child: SizedBox(
        height: 125,
        child: Stack(
          children: [
            Center(
              child:Container(
                width: 130,
                height: 130,
                child: new CircularProgressIndicator(
                    strokeWidth: 7,
                    value: 1.0,
                    color: const Color(0xFFB2DCD9),
                ),
              )
            ),
            Center(
              child:Container(
                padding: EdgeInsets.only(top: 5.0),
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Center(
                      child: Container(
                        child:Center(
                          child:Icon(
                            Icons.bolt,
                            size: 44,
                            color: const Color(0xFF30A4B4),
                          )
                        ),
                      ),
                    ),
                    Center(
                      child:Text(
                        '0',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Center(
                      child:Text(
                        'Min',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xFF84848A),
                        ),
                      ),
                    ),
                  ]
                )
              )
            )
          ]
        )
      )
    );
  }
}

class StatRow extends StatelessWidget {
  const StatRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 35.0),
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          StatCircle(
            icon:Icon(
              Icons.directions_run_outlined,
              size: 26,
              color: const Color(0xFF30A4B4),
            ),
            text1: "0",
            text2: "Pas"
          ),
          StatCircle(
              icon:Icon(
                Icons.maps_ugc,
                size: 26,
                color: const Color(0xFF30A4B4),
              ),
              text1: "0",
              text2: "Km"
          ),
          StatCircle(
              icon:Icon(
                Icons.circle,
                size: 26,
                color: const Color(0xFF30A4B4),
              ),
              text1: "705",
              text2: "Cal."
          )
        ]
      )
    );
  }
}

class Options extends StatelessWidget {
  const Options({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          decoration: new BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  const Color(0xFFF7F7F7),
                  const Color(0xFFF6F6F6),
                  const Color(0xFFF5F5F5),
                ],
              )
          ),
          child: Container(
            margin: const EdgeInsets.only(top: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Rectangle(
                  icon:Icon(
                    Icons.shield_moon_outlined,
                    size: 38,
                    color: const Color(0xFF49106C),
                  ),
                  text1: "Portez votre Fitbit au lit",
                  text2: "Votre objectif de sommeil est 8 h",
                  color: const Color(0xFF49106C)
                ),
                Rectangle(
                    icon:Icon(
                      Icons.directions_run,
                      size: 38,
                      color: const Color(0xFFB75224),
                    ),
                    text1: "Suivez votre exercice",
                    text2: "5 jours restant cette semaine",
                    color: const Color(0xFFB75224)
                ),
             ]
            )
          )
        )
      );
    }
}

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: new BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: const Color(0xFFE1E1E1),
            offset: Offset(0, -0.1),
            blurRadius: 10.0,
            spreadRadius: 0.0,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FooterOption(
            icon: Icon(
              Icons.square_foot_sharp,
              size: 32,
              color: Colors.black,
            ),
            text: "Aujourd'hui",
            textColor: Colors.black
          ),
          FooterOption(
              icon: Icon(
                Icons.compass_calibration,
                size: 32,
                color: const Color(0xFF84848A),
              ),
              text: "Découvrir",
              textColor: const Color(0xFF84848A),
          ),
          FooterOption(
              icon: Icon(
                Icons.people,
                size: 32,
                color: const Color(0xFF84848A),
              ),
              text: "Communauté",
              textColor: const Color(0xFF84848A),
          ),
          FooterOption(
              icon: Icon(
                Icons.arrow_right_alt_sharp,
                size: 32,
                color: const Color(0xFFB7AB24),
              ),
              text: "Premium",
              textColor: const Color(0xFF84848A),
          )
        ],
      ),
    );
  }
}
