import 'package:flutter/material.dart';

class StepperExample extends StatefulWidget {
  const StepperExample({super.key});

  @override
  State<StepperExample> createState() => _StepperExampleState();
}

class _StepperExampleState extends State<StepperExample> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 70,
          backgroundColor: Colors.blue.shade800,
          leading: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
          centerTitle: true,
          title: const Text(
            'Stepper Example 1',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Theme(
          data: ThemeData(
            colorScheme: ColorScheme.light(
              primary:
                  Colors.blue.shade800, // Change the color of the step label
            ),
          ),
          child: Stepper(
            physics: const BouncingScrollPhysics(),
            currentStep: _currentStep,
            onStepCancel: () {
              setState(() {
                if (_currentStep > 0) {
                  _currentStep--;
                } else {
                  _currentStep = 2;
                }
              });
            },
            onStepContinue: () {
              setState(() {
                if (_currentStep != 2) {
                  _currentStep++;
                } else {
                  _currentStep = 0;
                }
              });
            },
            onStepTapped: (int newIndex) {
              setState(() {
                _currentStep = newIndex;
              });
            },
            steps: [
              Step(
                  isActive: _currentStep == 0,
                  title: Text('Account'),
                  content: TextField(
                    cursorColor: Colors.blue.shade600,
                    controller: accountCtrl,
                    decoration: InputDecoration(hintText: 'Account Number'),
                  )),
              Step(
                  isActive: _currentStep == 1,
                  title: Text('Address'),
                  content: TextField(
                    cursorColor: Colors.blue.shade600,
                    controller: addressCtrl,
                    decoration: InputDecoration(hintText: 'Address'),
                  )),
              Step(
                  isActive: _currentStep == 2,
                  title: Text('Mobile Number'),
                  content: TextField(
                    cursorColor: Colors.blue.shade600,
                    controller: mobileCtrl,
                    decoration: InputDecoration(hintText: 'Mobile Number'),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

TextEditingController accountCtrl = TextEditingController();
TextEditingController addressCtrl = TextEditingController();
TextEditingController mobileCtrl = TextEditingController();
int _currentStep = 0;
