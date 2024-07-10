import 'dart:ui';

import 'package:flutter/material.dart';

class ThemeChangInApp extends StatefulWidget {
  const ThemeChangInApp({super.key});

  @override
  State<ThemeChangInApp> createState() => _ThemeChangInAppState();
}

class _ThemeChangInAppState extends State<ThemeChangInApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MyTheme.lightTheme,
      darkTheme: MyTheme.darkTheme,
      themeMode: _isDark ? ThemeMode.dark : ThemeMode.light,
      home: SafeArea(
        child: Builder(builder: (context) {
          return Scaffold(
            appBar: AppBar(
              title: Text('Theme',
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.secondary)),
              actions: [
                Switch(
                    value: _isDark,
                    onChanged: (value) {
                      setState(() {
                        _isDark = value;
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
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
                  ],
                ),
              ),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {},
              child: const Icon(Icons.add),
            ),
          );
        }),
      ),
    );
  }
}

bool _isDark = false;

class MyTheme {
  static ThemeData lightTheme = ThemeData(
    appBarTheme: const AppBarTheme(color: Colors.greenAccent),
    colorScheme: const ColorScheme.light(
      brightness: Brightness.light,
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
    colorScheme: ColorScheme.dark(
      brightness: Brightness.dark,
      primary: Colors.blue,
      secondary: Colors.red.shade100,
      surface: Colors.brown,
      onPrimary: Colors.black,
      onSecondary: Colors.deepPurple,
      onSurface: Colors.indigoAccent.shade100,
    ),
  );
}
