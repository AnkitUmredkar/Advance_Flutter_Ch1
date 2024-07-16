import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Provider/home_page_provider.dart';

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    HomePageProvider homePageProviderTrue =
        Provider.of<HomePageProvider>(context, listen: true);
    HomePageProvider homePageProviderFalse =
        Provider.of<HomePageProvider>(context, listen: false);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          toolbarHeight: 70,
          centerTitle: true,
          title: const Text(
            'Counter App',
            style: TextStyle(color: Colors.white),
          ),
          leading: Icon(
            Icons.menu,
            color: Colors.white,
          ),
        ),
        body: Center(
          child: Text(
            homePageProviderTrue.count.toString(),
            style: TextStyle(fontSize: 20),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            homePageProviderFalse.incraseValue();
          },
          backgroundColor: Colors.indigo,
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
