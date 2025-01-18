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

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double _moodValue = 0.5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        SizedBox(
          height: 600,
        ),
        Slider(
          value: _moodValue,
          onChanged: (double value) {
            setState(() {
              _moodValue = value;
              print('Slider value: $value');
            });
          },
          min: 0.0,
          max: 1.0,
        ),
      ],
    ));
  }
}
