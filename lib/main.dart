import 'package:flutter/material.dart';

import './screens/home_screen.dart';

void main() {
  runApp(MainClass());
}

class MainClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TODO',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: HomeScreen(),
    );
  }
}