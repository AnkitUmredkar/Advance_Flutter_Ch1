<h1 align="center"> 🔶🔸1.1 Switch Dark Theme to Light Theme🔸🔶 </h1>


<div align="center">
  <img height="550" src="https://github.com/AnkitUmredkar/Advance_Flutter_Ch1/assets/149374001/4a13067a-a900-46c7-9a80-9587a23103e8"/>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<img height="550" src="https://github.com/AnkitUmredkar/Advance_Flutter_Ch1/assets/149374001/6297cfc3-c4b8-46ae-996b-e54998a1aaf8"/>
</div>

<h1 align="left"> </h1>

<div align="center">
<video height="550" src="https://github.com/AnkitUmredkar/Advance_Flutter_Ch1/assets/149374001/ff7dc230-32fb-4746-85ac-e0f8dd873c50"/>
</div>

<h1 align="left"> </h1>

<div align = "center">
<a  href="https://github.com/AnkitUmredkar/Advance_Flutter_Ch1/blob/master/lib/Screens/Dark%20Theme%20to%20Light%20Theme/example.dart">-> 📂 Go To Dart File 📂<-</a>
</div>
  
<h1 align="left"> </h1> 

## Material app :
  
```bash
     darkTheme: ThemeData.dark(),
    theme: ThemeData.light(),
    themeMode: isDark?ThemeMode.dark:ThemeMode.light,
```

## Home Page :
```bash
     GestureDetector(
                onTap: () {
                  setState(() {
                    isDark=false;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height:115,
                    width: double.infinity,
                    decoration: BoxDecoration(
                    color: colorYellow,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    alignment: Alignment.center,
                    child: Text('Light Icon',style: TextStyle(color: isDark?Colors.white:Colors.black,fontWeight: FontWeight.bold,fontSize: 25),),
                  ),
                ),
             ),
```
<h1 align="left"> </h1>

<div align="center">
<img height="550" src="https://github.com/AnkitUmredkar/Advance_Flutter_Ch1/assets/149374001/670c5968-a1cb-4249-85cd-85439d2007bd"/>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<img height="550" src="https://github.com/AnkitUmredkar/Advance_Flutter_Ch1/assets/149374001/65f1a157-fc15-4c1b-9640-ece1f86f310c"/>
</div>

<h1 align="left"> </h1>

<div align="center">
<video height="550" src="https://github.com/AnkitUmredkar/Advance_Flutter_Ch1/assets/149374001/3d36fb2c-a193-46da-ae96-ea2ce7a39112"/>
</div>

<h1 align="left"> </h1>

<div align = "center">
<a  href="https://github.com/AnkitUmredkar/Advance_Flutter_Ch1/blob/master/lib/Screens/Dark%20Theme%20to%20Light%20Theme/example_2.dart">-> 📂 Go To Dart File 📂<-</a>
</div>

<h1 align="left"> </h1>

<h1 align="center"> 🔶🔸1.2 Stepper Widget Example 1🔸🔶 </h1>

## Stepper Widget

-  ```Flutter Stepper widget``` :  This widget provides a smooth, guided experience for multi-step forms, allowing users to navigate through each step with ease. Perfect for any app requiring structured data input, the Stepper widget enhances user experience with its intuitive design and seamless functionality.

## Properties of Stepper Widget :

- ```steps``` : List of Step objects that define each individual step in the stepper. Each Step typically contains a title and content.

- ```currentStep``` : Integer that represents the current active step. This is used to control which step is currently displayed and allows users to navigate forward and backward through the steps.

- ```onStepContinue``` : Callback function that is called when the user taps the "Continue" button on an active step. You typically increment the currentStep in this callback to move forward.

- ```onStepCancel``` : Callback function that is called when the user taps the "Cancel" button on an active step. You typically decrement the currentStep in this callback to move backward.

- ```onStepTapped``` : Callback function that is called when the user taps on a step's header. It is useful for handling custom behavior when a step is directly selected.

- ```controlsBuilder``` : Optional builder function to customize the appearance of the buttons (e.g., "Next", "Back").

- ```type``` : Enum that specifies the type of stepper: StepperType.vertical for a vertical layout and StepperType.horizontal (default) for a horizontal layout.

## Example :

```bash
Stepper(
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
```

<h1 align="center"> </h1>

<div align="center">
<img height="550" align="left" src="https://github.com/AnkitUmredkar/Advance_Flutter_Ch1/assets/149374001/bcfa7a7d-0587-46e5-940a-1a60545093ed"/>
<img height="550" src="https://github.com/AnkitUmredkar/Advance_Flutter_Ch1/assets/149374001/7f414640-6d0c-4fb8-86ee-23066809dbf8"/>
<img height="550" align="right" src="https://github.com/AnkitUmredkar/Advance_Flutter_Ch1/assets/149374001/e38b0faa-43d1-4bdf-92a9-e85f4e846e4c"/>
</div>

<h1 align="left"> </h1>

<div align="center">
<video height="550" src="https://github.com/AnkitUmredkar/Advance_Flutter_Ch1/assets/149374001/4e5fdc5d-707e-4522-b3fe-9d2a988646ea"/>
</div>

<h1 align="left"> </h1>

<div align = "center">
<a  href="https://github.com/AnkitUmredkar/Advance_Flutter_Ch1/blob/master/lib/Screens/Stepper/stepper_example.dart">-> 📂 Go To Dart File 📂<-</a>
</div>

<h1 align="left"> </h1>

<h1 align="center"> 🔶🔸1.2 Stepper Widget Example 2🔸🔶 </h1>

## Example :

```bash
Stepper(
            type: StepperType.horizontal,
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
            controlsBuilder: (BuildContext context, ControlsDetails details) {
              return Padding(
                padding: const EdgeInsets.only(top: 11),
                child: Row(
                  children: [
                    if (_currentStep == 2)
                      FilledButton(
                        onPressed: details.onStepContinue,
                        child: const Text('Upload'),
                      )
                    else
                      FilledButton(
                        onPressed: details.onStepContinue,
                        child: const Text('Continue'),
                      ),
                    const SizedBox(width: 8),
                    if (_currentStep >= 0)
                      ElevatedButton(
                        onPressed: details.onStepCancel,
                        child: const Text(
                          'Cancel',
                          style: TextStyle(color: Colors.black87),
                        ),
                      ),
                  ],
                ),
              );
            },
            steps: [
              Step(
                isActive: _currentStep == 0,
                title: const Text('Personal'),
                content: Column(
                  children: [
                    buildTextField(
                        'First Name', 1, firstNameCtrl, Icons.person),
                    const SizedBox(height: 15),
                    buildTextField('Last name', 1, lastNameCtrl, Icons.person),
                  ],
                ),
              ),
              Step(
                isActive: _currentStep == 1,
                title: const Text('Contect'),
                content: Column(
                  children: [
                    buildTextField('E-mail', 1, emailCtrl, Icons.email),
                    const SizedBox(height: 15),
                    buildTextField('Address', 3, addressCtrl, Icons.home),
                    const SizedBox(height: 15),
                    buildTextField('Mobile Number', 1, mobileCtrl, Icons.phone),
                  ],
                ),
              ),
              Step(
                isActive: _currentStep == 2,
                title: const Text('Upload'),
                content: Column(
                  children: [
                    Row(
                      children: [
                        const Text(
                          'Name     : ',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        Text(
                          '${firstNameCtrl.text} ${lastNameCtrl.text}',
                          style: const TextStyle(fontSize: 18),
                        )
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Address : ',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        Expanded(
                            child: Text(
                          addressCtrl.text.toString(),
                          style: const TextStyle(fontSize: 18),
                        ))
                      ],
                    ),
                    Row(
                      children: [
                        const Text(
                          'Mobile   : ',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        Text(
                          mobileCtrl.text.toString(),
                          style: const TextStyle(fontSize: 18),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        const Text(
                          'E-mail    : ',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        Expanded(
                            child: Container(
                                child: Text(
                          emailCtrl.text.toString(),
                          style: const TextStyle(fontSize: 18),
                        )))
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
```

<h1 align="left"> </h1>

<div align="center">
<img height="550" align="left" src="https://github.com/AnkitUmredkar/Advance_Flutter_Ch1/assets/149374001/82c0eca6-6f60-46f3-8a27-b9a69696ccab"/>
<img height="550" src="https://github.com/AnkitUmredkar/Advance_Flutter_Ch1/assets/149374001/7db9036f-7b7a-471f-ab8f-bda230dcfc50"/>
<img height="550" align="right" src="https://github.com/AnkitUmredkar/Advance_Flutter_Ch1/assets/149374001/cc7b2195-3376-46ad-9d74-ee4550fe7e42"/>
</div>

###

<h1 align="left"> </h1>

###

<div align="center">
<video height="550" src="https://github.com/AnkitUmredkar/Advance_Flutter_Ch1/assets/149374001/dcc8b710-8040-4d08-b394-6c16605dd82a"/>
</div>

<div align = "center">
<a  href="https://github.com/AnkitUmredkar/Advance_Flutter_Ch1/blob/master/lib/Screens/Stepper/stepper_example_2.dart">-> 📂 Go To Dart File 📂<-</a>
</div>

<h1 align="left"> </h1>

<h1 align="center"> 🔶🔸1.3 Provider Tree🔸🔶 </h1>

# State Management 
## What is State Management in Flutter :

- ```bash State management in Dart and Flutter is all about managing the data that the app will render and how it will respond to user input.``` 

##  State :
- State is information that (1) can be read synchronously when the widget is built and (2) might change during the lifetime of the widget..

## setState((){}) :
- State is information that can be read synchronously when the widget is built and might change during the lifetime of the widget.

# Provider State Management
- ```Provider is a powerful state management solution in Flutter, offering a simple way to manage and share state across your application```.

## Provider package :
- ```bash
  dependencies :
  flutter:
    sdk: flutter
  provider: ^6.0.0  # Check for the latest version
  ```

## ChangeNotifier Class  :
- ChangeNotifier is a simple class included in the Flutter SDK which provides change notification to its listeners.

## ChangeNotifierProvider Widget :
- ChangeNotifierProvider is the widget that provides an instance of a ChangeNotifier to its descendants.

## Consumer Widget :
- The Consumer widget has two main purposes: It allows obtaining a value from a provider when we don't have a BuildContext that is a descendant of said provider, and therefore cannot use Provider.

<h2 align="left"> Provider Tree </h2>

<div align="center">
<img height="550" src="https://github.com/AnkitUmredkar/Advance_Flutter_Ch1/assets/149374001/ab5db672-550d-4133-bf3e-a1380c8d561d"/>
</div>

<h1 align="left"> </h1>

<h1 align="center"> 🔶🔸1.4 Provider & Change Theme using Provider🔸🔶 </h1>

<div align="center">
<img height="550" src="https://github.com/AnkitUmredkar/Advance_Flutter_Ch1/assets/149374001/c93665eb-1906-4850-889d-abd5026c357c"/>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<img height="550" src="https://github.com/AnkitUmredkar/Advance_Flutter_Ch1/assets/149374001/c9cfde77-e69b-489d-9513-4a4d0fc8d84d"/>
</div>

###

<h1 align="left"> </h1>

###

<div align="center">
<video height="550" src="https://github.com/AnkitUmredkar/Advance_Flutter_Ch1/assets/149374001/40461002-e7e0-4263-a23c-195a99dc6aaf"/>
</div>

###

<h1 align="left"> </h1>

###

<div align = "center">
<a  href="https://github.com/AnkitUmredkar/Advance_Flutter_Ch1/tree/master/lib/Screens/UserProfileTheme">-> 📂 Go To Dart File 📂<-</a>
</div>

###

<h1 align="left"> </h1>

###

<h1 align="center"> 🔶🔸1.5 Quotes Data Solving with Provider🔸🔶 </h1>

<div align="center">
<img height="550" align="left" src="https://github.com/AnkitUmredkar/Advance_Flutter_Ch1/assets/149374001/b8be8559-1e09-43db-9a5b-180750a3845d"/>
<img height="550" src="https://github.com/AnkitUmredkar/Advance_Flutter_Ch1/assets/149374001/ab6593e6-8cc3-4f1a-acad-53121c38c23f"/>
<img height="550" align="right" src="https://github.com/AnkitUmredkar/Advance_Flutter_Ch1/assets/149374001/22b3242d-5e2b-4753-8255-33d42ebbcbe5"/>
</div>

###

<h1 align="left"> </h1>

###

<div align="center">
<img height="550" src="https://github.com/AnkitUmredkar/Advance_Flutter_Ch1/assets/149374001/81075d8f-1418-4ee4-817a-293edfb2a53d"/>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<img height="550" src="https://github.com/AnkitUmredkar/Advance_Flutter_Ch1/assets/149374001/a5fae115-a6c0-4260-9d11-7ccc13c1b454"/>
</div>

###

<h1 align="left"> </h1>

###

<div align="center">
<video height="550" src="https://github.com/AnkitUmredkar/Advance_Flutter_Ch1/assets/149374001/83bdae6e-f19a-4afc-af19-82660bf54d29"/>
</div>

<h1 align="left"> </h1>

<h1 align="center"> 🔶🔸1.5 onBoarding Screen in Flutter 🔸🔶 </h1>

# How can achieve one time intro screen ?

- It is achieve by shared_preferences Package. Using shared_preferences simplifies persistent data storage in Flutter apps, enhancing user experience by retaining preferences and settings across app restarts.
### Properties :
- Initialization: Obtain an instance of SharedPreferences asynchronously:
- Storing Data: Save data using methods like setBool, setInt, setString, etc.:
- Fetching Data: Retrieve stored data using corresponding get methods:
- Removing Data: Delete specific data using remove:
- Clearing All Data: Remove all stored data using clear:

## Example : 
### Provider Class
```bash
Future<void> setOnBoarding(bool isShow)async {
    sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setBool('show',isShow);
  }

  void removeScreen(){
    isShow = true;
    setOnBoarding(isShow);
    notifyListeners();
  }

  Future<void> getOnBoarding()async {
    sharedPreferences = await SharedPreferences.getInstance();
    isShow = sharedPreferences.getBool('show') ?? false;
  }

  OnBoardingProvider(){
    getOnBoarding();
  }
```

<h1 align="left"> </h1>

<div align="center">
<img height="550" align="left" src="https://github.com/user-attachments/assets/6041cfa1-7a9a-4251-addf-a9445f587acc"/>
<img height="550" src="https://github.com/user-attachments/assets/5d12d4d9-834e-49e4-9ab8-74f07223e138"/>
<img height="550" align="right" src="https://github.com/user-attachments/assets/86879010-167c-4a21-934e-3a0bae00ae8b"/>
</div>

<h1 align="left"> </h1>

<div align="center">
<img height="550" src="https://github.com/user-attachments/assets/e13f2465-5223-424f-9796-d3d4fa37ea3d"/>
</div>

###

<h1 align="left"> </h1>

###

<div align="center">
<video height="550" src="https://github.com/user-attachments/assets/7e508c5b-d805-4a11-a92b-56d9b933edfd"/>
</div>
  
<h1 align="left"> </h1>
  
<div align = "center">
<a  href="https://github.com/AnkitUmredkar/Advance_Flutter_Ch1/tree/master/lib/Screens/onBoarding">-> 📂 Go To Dart File 📂<-</a>
</div>

<h1 align="left"> </h1>

<h1 align="center"> 🔶🔸1.6 Contact Us Page With Interaction 🔸🔶 </h1>

# url_launcher Package :
### In Flutter, url_launcher is a package that allows your app to open URLs in a browser or other apps.
- Open Web Links: It can open web pages in the default browser.
- Make Phone Calls: It can dial a phone number using the phone app.
- Send Emails: It can open the email app with a pre-filled email.
- Send SMS: It can open the messaging app to send a text message.

<h1 align="left"> </h1>
  
<div align="center">
<img height="550" src="https://github.com/user-attachments/assets/c7742f94-8e1b-480a-8c7b-4db0a37446c6"/>
</div>

<h1 align="left"> </h1>
<div align="center">
<video height="550" src="https://github.com/user-attachments/assets/beaba70e-cfd2-455b-9f9e-73169b7c18a2"/>
</div>
  
<div align = "center">
<a  href="https://github.com/AnkitUmredkar/Advance_Flutter_Ch1/tree/master/lib/Screens/Contact%20Us%20Page">-> 📂 Go To Dart File 📂<-</a>
</div>

<h1 align="left"> </h1>

<h1 align="center"> 🔶🔸1.7 Gallery Biometric Authentication🔸🔶 </h1>

## local_auth Package :
- The local_auth package, provided by the Flutter team, enables you to integrate local authentication methods like fingerprint, Touch ID, Face ID, passcode, PIN, or pattern recognition into your Flutter app. This enhances security by allowing users to authenticate themselves using their device's built-in features instead of relying solely on passwords.

```bash
  Future<bool> didAuthenticate = localAuth.authenticate(
  localizedReason: 'Please authenticate to access secure data',
  stickyAuth: true, // Optional: Remember authentication (see note)
  biometricOnly: true, // Optional: Only allow biometric methods
  sensitiveDeviceNote: 'This device is sensitive and requires authentication');
```
- ```bash localizedReason```: A message explaining why authentication is needed.
- ```bash stickyAuth (optional)```: If `true`, the OS might prompt for authentication again when the app resumes from the background (useful for sensitive data).
- ```bash biometricOnly (optional)```: If `true`, only biometric methods (fingerprint, Face ID) are allowed.
- ```bash sensitiveDeviceNote (optional, Android-only)```: A message displayed when using fingerprint authentication on insecure devices.

### Example :
```bash
final localAuth = LocalAuth();
  bool _didAuthenticate = false;

  Future<void> _authenticate() async {
    List<BiometricType> availableBiometrics;
    try {
      availableBiometrics = await localAuth.getAvailableBiometrics();
    } on PlatformException catch (e) {
      print(e); // Handle platform exceptions
      return;
    }

    if (availableBiometrics.isEmpty) {
      // Show a message if no biometric methods are available
      return;
    }

    try {
      final didAuthenticate = await localAuth.authenticate(
        localizedReason: 'Please authenticate to access secure data',
        stickyAuth: true,
      );
      setState(() => _didAuthenticate = didAuthenticate);
    } on PlatformException catch (e) {
      print(e); // Handle platform exceptions
    }
  }
```

<h1 align="left"> </h1>

<div align="center">
<img height="550" align="left" src="https://github.com/user-attachments/assets/4f7600dd-593e-4512-b711-b4c8c83689e9"/>
<img height="550" src="https://github.com/user-attachments/assets/20b2e75c-39fc-4e91-b99a-d0e90e4b3332"/>
<img height="550" align="right" src="https://github.com/user-attachments/assets/c0d988a5-c046-42a3-b2e1-4a8fcff9b368"/>
</div>

<h1 align="left"> </h1>

<div align="center">
<video height="550" src=https://github.com/user-attachments/assets/bccd1c4d-f284-4b97-b987-992f78c8d669
"/>
</div>

<h1 align="left"> </h1>

<div align = "center">
<a  href="https://github.com/AnkitUmredkar/Advance_Flutter_Ch1/tree/master/lib/Screens/Gallery%20With%20Biometric%20Authentication">-> 📂 Go To Dart File 📂<-</a>
</div>
