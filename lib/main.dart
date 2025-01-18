import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

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
  final _moodValueNotifier = ValueNotifier<double>(0.5);

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        SizedBox(
          height: 200,
        ),
        AnimatedBuilder(
          animation: _moodValueNotifier,
          builder: (context, child) {
            double interpolation = _moodValue.clamp(0.0, 1.0);

            return Lottie.asset(
                interpolation < 0.33
                    ? 'assets/animations/sad.json'
                    : interpolation < 0.66
                        ? 'assets/animations/nuetral.json'
                        : 'assets/animations/happy.json',
                width: 200);
          },
        ),
        SizedBox(
          height: 50,
        ),
        Text(
          _moodValue < 0.33
              ? 'Sad'
              : _moodValue < 0.67
                  ? 'Nuetral'
                  : 'Happy',
          style: TextStyle(
            fontSize: 30,
          ),
        ),
        SizedBox(
          height: 100,
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
