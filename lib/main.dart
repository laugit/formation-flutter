import 'package:flutter/material.dart';
import 'package:formation_flutter/widgets/scaffold.dart';
import 'package:inspector/inspector.dart';

void main() {
  runApp(
    const MaterialApp(
      title: 'My app', // used by the OS task switcher
      home: SafeArea(
        child: Inspector(child: FitbitScaffold()),
      ),
    ),
  );
}