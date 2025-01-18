import 'package:flutter/material.dart';

void main() {
  runApp(MoodSlider());
}

class MoodSlider extends StatelessWidget {
  const MoodSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Mood Slider'),
      ),
    );
  }
}
