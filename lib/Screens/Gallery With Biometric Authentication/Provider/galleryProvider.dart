import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:local_auth/local_auth.dart';

import '../View/hide_folders.dart';

class GalleryProvider extends ChangeNotifier {
  final LocalAuthentication auth = LocalAuthentication();
  bool _didAuthenticate = false;

  Future<void> localUserAuthentication(BuildContext context) async {
    List<BiometricType> availableBiometrics;
    try {
      availableBiometrics = await auth.getAvailableBiometrics();
    } on PlatformException catch (e) {
      Fluttertoast.showToast(
        msg: 'Error',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 3,
        backgroundColor: Colors.black,
        textColor: Colors.white,
        fontSize: 16,
      );
      return;
    }

    if (availableBiometrics.isEmpty) {
      Fluttertoast.showToast(
        msg: 'Any Platform does not Available',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 3,
        backgroundColor: Colors.black,
        textColor: Colors.white,
        fontSize: 16,
      );
      return;
    }

    try {
      final didAuthenticate = await auth.authenticate(
        localizedReason: 'Please authenticate to access hide folder',
      );
      _didAuthenticate = didAuthenticate;
      notifyListeners();
    } on PlatformException catch (e) {
      Fluttertoast.showToast(
        msg: 'Error',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 3,
        backgroundColor: Colors.black,
        textColor: Colors.white,
        fontSize: 16,
      );
    }

    if (_didAuthenticate) {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const HideFoldersPage(),
      ));
    } else {
      Fluttertoast.showToast(
        msg: 'Any Platform does not Available',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 3,
        backgroundColor: Colors.black,
        textColor: Colors.white,
        fontSize: 16,
      );
    }
  }

  int randomNumber() {
    Random random = Random();
    int a = random.nextInt(1100);
    return a;
  }
}
