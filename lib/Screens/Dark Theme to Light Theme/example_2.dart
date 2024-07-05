import 'package:flutter/material.dart';

class Example2 extends StatefulWidget {
  const Example2({super.key});

  @override
  State<Example2> createState() => _Example2State();
}

class _Example2State extends State<Example2> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: _isDark ? ThemeMode.light : ThemeMode.dark,
      home: SafeArea(
        child: Scaffold(
          body: Stack(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    AnimatedContainer(
                      height: 170,
                      width: 170,
                      margin: EdgeInsets.only(top: height * 0.12),
                      decoration: BoxDecoration(
                        gradient: _isDark
                            ? LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [
                                  Color(0xffFFBC77),
                                  Color(0xffFF7E3B),
                                ],
                              )
                            : LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [
                                  Colors.white70,
                                  Color(0xff736dad),
                                ],
                              ),
                        shape: BoxShape.circle,
                      ),
                      duration: Duration(milliseconds: 100),
                    ),
                    SizedBox(height: height * 0.0275),
                    Text(
                      textAlign: TextAlign.center,
                      _isDark ? 'Good\nMorning' : 'Good\nNight',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: width * 0.08,
                      ),
                    ),
                    SizedBox(height: height * 0.18),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _isDark = !_isDark;
                        });
                      },
                      child: AnimatedContainer(
                        height: 115,
                        width: 115,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color:
                                    _isDark ? Colors.white : Color(0xff282533),
                                blurRadius: 3,
                                offset: Offset(5, -5)),
                            BoxShadow(
                                color: _isDark
                                    ? Colors.black38
                                    : Color(0xff060609),
                                blurRadius: 5,
                                offset: Offset(-5.5, 5.5)),
                          ],
                          shape: BoxShape.circle,
                          color:
                              _isDark ? Color(0xffFCF4FC) : Color(0xff1a1820),
                        ),
                        duration: Duration(milliseconds: 100),
                        child: Icon(
                          Icons.power_settings_new,
                          size: width * 0.07,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              AnimatedPositioned(
                duration: Duration(seconds: 1),
                top: _isDark ? -30 : 88,
                right: _isDark ? -30 : 98,
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 30),
                  height: 160,
                  width: 160,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _isDark ? Color(0xffFCF4FC) : Color(0xff121116)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

bool _isDark = false;
