import 'package:advance_flutter_ch1/Screens/Stepper/stepper_example_2.dart';
import 'package:advance_flutter_ch1/Screens/UserProfileTheme/Provider/homeProvider.dart';
import 'package:advance_flutter_ch1/Screens/onBoarding/Provider/onBoardignProvidder.dart';
import 'package:advance_flutter_ch1/Screens/onBoarding/View/introScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Screens/CounterApp/Provider/home_page_provider.dart';
import 'Screens/CounterApp/View/home_page.dart';
import 'Screens/Dark Theme to Light Theme/example.dart';
import 'Screens/Dark Theme to Light Theme/example_2.dart';
import 'Screens/Quotes Data Solving Provider/Provider/quotesProvider.dart';
import 'Screens/Quotes Data Solving Provider/View/quotesPage.dart';
import 'Screens/Stepper/stepper_example.dart';
import 'Screens/UserProfileTheme/Model/model.dart';
import 'Screens/UserProfileTheme/View/home_page.dart';
import 'Screens/onBoarding/View/splashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => OnBoardingProvider(),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        // theme: MyTheme.lightTheme,
        // darkTheme: MyTheme.darkTheme,
        // themeMode: Provider.of<UserProfileClass>(context).isDark
        //     ? ThemeMode.dark
        //     : ThemeMode.light,
        home: const SplashScreen(),
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
// todo -> Quotes using Provider
// QuotesPage()
// todo -> onBoarding Screen Example
// SplashScreen()