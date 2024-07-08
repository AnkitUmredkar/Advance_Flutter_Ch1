import 'package:advance_flutter_ch1/Screens/Stepper/stepper_example_2.dart';
import 'package:flutter/material.dart';
import 'Screens/Dark Theme to Light Theme/example.dart';
import 'Screens/Dark Theme to Light Theme/example_2.dart';
import 'Screens/Stepper/stepper_example.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StepperExample(),
    );
  }
}

//todo -> Switch light theme to dark theme
// Example2()
// todo -> StepperExample
// StepperExample()
// todo -> StepperExample 2
// StepperExample2()