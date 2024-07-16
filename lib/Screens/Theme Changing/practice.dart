import 'dart:ui';
// ThemeChangInApp

import 'package:flutter/material.dart';

class ThemeChangInApp extends StatefulWidget {
  const ThemeChangInApp({super.key});

  @override
  State<ThemeChangInApp> createState() => _ThemeChangInAppState();
}

class _ThemeChangInAppState extends State<ThemeChangInApp> {
  bool _isDark = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: const ColorScheme(
          brightness: Brightness.light,
          primary: Colors.amber,
          onPrimary: Colors.blue,
          secondary: Colors.green,
          onSecondary: Colors.redAccent,
          onSurface: Colors.blueGrey,
          error: Colors.teal,
          onError: Colors.teal,
          surface: Colors.grey,
        ),
      ),
      darkTheme: ThemeData(
        colorScheme: ColorScheme(
          brightness: Brightness.dark,
          primary: Colors.purple,
          onPrimary: Colors.pink,
          secondary: Colors.blue,
          onSecondary: Colors.green,
          onSurface: Colors.tealAccent,
          error: Colors.tealAccent,
          onError: Colors.tealAccent,
          surface: Colors.black,
        ),
      ),
      themeMode: _isDark ? ThemeMode.dark : ThemeMode.light,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text('Theme',
                style: TextStyle(
                    color: Theme.of(context).colorScheme.primary)),
            actions: [
              Switch(
                  value: _isDark,
                  onChanged: (value) {
                    setState(() {
                      _isDark = !_isDark;
                    });
                  })
            ],
          ),
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text('Hello Flutter',
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.primary)),
                  Container(
                    height: 200,
                    width: 200,
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                ],
              ),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.add),
          ),
        ),
      ),
    );
  }
}

class MyTheme {
  static ThemeData lightTheme = ThemeData(
    appBarTheme: const AppBarTheme(color: Colors.greenAccent),
    brightness: Brightness.light,
    colorScheme: const ColorScheme.light(
      primary: Colors.red,
      secondary: Colors.blue,
      surface: Colors.amber,
      onPrimary: Colors.yellow,
      onSecondary: Colors.deepOrange,
      onSurface: Colors.indigo,
    ),
  );

  static ThemeData darkTheme = ThemeData(
    appBarTheme: const AppBarTheme(color: Colors.redAccent),
    brightness: Brightness.dark,
    colorScheme: ColorScheme.dark(
      primary: Colors.blue,
      secondary: Colors.red.shade100,
      surface: Colors.brown,
      onPrimary: Colors.black,
      onSecondary: Colors.deepPurple,
      onSurface: Colors.indigoAccent.shade100,
    ),
  );
}
