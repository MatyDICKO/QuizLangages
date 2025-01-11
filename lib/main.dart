import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz Langages',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz Langages'),
        ),
        body: Center(
          child: Text('Bienvenue dans Quiz Langages !'),
        ),
      ),
    );
  }
}
