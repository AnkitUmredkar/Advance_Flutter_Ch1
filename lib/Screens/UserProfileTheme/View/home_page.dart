import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Provider/homeProvider.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    UserProfileClass userProfileProviderTrue =
        Provider.of<UserProfileClass>(context, listen: true);
    UserProfileClass userProfileProviderFalse =
        Provider.of<UserProfileClass>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: const Icon(Icons.arrow_back_ios),
          actions: [
            const Padding(
              padding: EdgeInsets.only(right: 12),
              child: Icon(
                Icons.add_circle_outline_rounded,
                size: 27,
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                height: 150,
                width: 150,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: AssetImage('assets/images/UserProfile/user.jpeg'),
                      fit: BoxFit.fill),
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.black),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'Testing User',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 40,
              ),
              ListTile(
                leading: Icon(
                  (userProfileProviderTrue.isDark)
                      ? Icons.dark_mode
                      : Icons.sunny,
                  color: Theme.of(context).colorScheme.primary,
                ),
                title: const Text('Dark Mode'),
                trailing: Switch(
                    inactiveThumbColor: Theme.of(context).colorScheme.primary,
                    activeColor: Theme.of(context).colorScheme.primary,
                    value: userProfileProviderTrue.isDark,
                    onChanged: (value) {
                      userProfileProviderFalse.themeChange();
                    }),
              ),
              ListTile(
                leading: Icon(
                  Icons.grid_on,
                  color: Theme.of(context).colorScheme.secondary,
                ),
                title: const Text('Story'),
              ),
              ListTile(
                leading: Icon(Icons.settings,
                    color: Theme.of(context).colorScheme.onPrimary),
                title: const Text('Setting and Privacy'),
              ),
              ListTile(
                leading: Icon(Icons.message_outlined,
                    color: Theme.of(context).colorScheme.onSecondary),
                title: const Text('Help Center'),
              ),
              ListTile(
                leading: Icon(Icons.notifications,
                    color: Theme.of(context).colorScheme.primary),
                title: const Text('Notification'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
