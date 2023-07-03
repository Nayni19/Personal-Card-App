import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class CustomCard extends StatelessWidget {
  final IconData icon;
  final String text;

  const CustomCard({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      child: ListTile(
        leading: Icon(
          icon,
          color: Colors.teal[900],
          size: 30,
        ),
        title: Text(
          text,
          style: TextStyle(
              fontSize: 25, color: Colors.teal[900], fontFamily: 'SourceSans'),
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('images/profile.png'),
              ),
              Text(
                'Nayni Shah',
                style: TextStyle(
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontFamily: "Hurricane"),
              ),
              Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.teal[200],
                    letterSpacing: 2.5,
                    fontFamily: 'SourceSans',
                    fontWeight: FontWeight.bold),
              ),
              CustomCard(icon: Icons.phone_in_talk, text: '7977592693'),
              CustomCard(icon: Icons.email, text: 'nayni.shah@5paisa.com')
            ],
          ),
        ),
      ),
    ));
  }
}
