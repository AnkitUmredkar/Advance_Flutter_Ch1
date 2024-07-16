import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                SystemNavigator.pop();
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              )),
          toolbarHeight: 70,
          backgroundColor: Colors.blue,
          title: const Text(
            'HomePage',
            style: TextStyle(fontFamily: 'poppins', color: Colors.white),
          ),
        ),
        body: Center(
          child: Text(
            'HomePage',
            style: TextStyle(
                fontFamily: 'poppins',
                fontSize: width * 0.032,
                fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
