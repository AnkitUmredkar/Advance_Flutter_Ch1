import 'package:advance_flutter_ch1/Screens/Stepper/stepper_example_2.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Screens/Contact Us Page/Provider/contactProvider.dart';
import 'Screens/Contact Us Page/View/contact_us_page.dart';
import 'Screens/Dark Theme to Light Theme/example.dart';
import 'Screens/Dark Theme to Light Theme/example_2.dart';
import 'Screens/Gallery With Biometric Authentication/Provider/galleryProvider.dart';
import 'Screens/Gallery With Biometric Authentication/View/Gallery_biometric_authentication.dart';
import 'Screens/On Boarding/Provider/onBoardignProvidder.dart';
import 'Screens/On Boarding/View/splashScreen.dart';
import 'Screens/Quotes Data Solving Provider/Provider/quotesProvider.dart';
import 'Screens/Quotes Data Solving Provider/View/quotesPage.dart';
import 'Screens/Stepper/stepper_example.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => GalleryProvider(),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        // theme: MyTheme.lightTheme,
        // darkTheme: MyTheme.darkTheme,
        // themeMode: Provider.of<UserProfileClass>(context).isDark
        //     ? ThemeMode.dark
        //     : ThemeMode.light,
        home: const GalleryBiometricAuthentication(),
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
// todo -> Contact Us Page
// SplashScreen()
// todo -> Gallery with Biometric Authentication
// GalleryBiometricAuthentication()
