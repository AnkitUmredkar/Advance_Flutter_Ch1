import 'package:advance_flutter_ch1/Screens/Stepper/stepper_example_2.dart';
import 'package:advance_flutter_ch1/Screens/UserProfileTheme/Provider/homeProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Screens/CounterApp/Provider/home_page_provider.dart';
import 'Screens/CounterApp/View/home_page.dart';
import 'Screens/Dark Theme to Light Theme/example.dart';
import 'Screens/Dark Theme to Light Theme/example_2.dart';
import 'Screens/Stepper/stepper_example.dart';
import 'Screens/ThemeChanging/practice.dart';
import 'Screens/UserProfileTheme/View/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => UserProfileClass(),
      builder: (context, child) => MaterialApp(
        theme: ThemeData(
          brightness: Brightness.light,
          colorScheme: const ColorScheme.light(
            primary: Colors.purple,
            onPrimary: Colors.blue,
            secondary: Colors.green,
            onSecondary: Colors.redAccent,
          ),
        ),
        darkTheme: ThemeData(
          brightness: Brightness.dark,
          colorScheme: const ColorScheme.dark(
            primary: Colors.amber,
            onPrimary: Colors.pink,
            secondary: Colors.blue,
            onSecondary: Colors.green,
          ),
        ),
        themeMode: Provider.of<UserProfileClass>(context).isDark
            ? ThemeMode.dark
            : ThemeMode.light,
        debugShowCheckedModeBanner: false,
        home: const UserProfile(),
      ),
    );
  }
}

//todo -> Switch light theme to dark theme
// Example2(),  LightToDarkTheme()
// todo -> StepperExample
// StepperExample()
// todo -> StepperExample 2
// StepperExample2()
// todo -> Counter App
// CounterApp()
// todo -> UserProfile Theme Changing
// UserProfile()
