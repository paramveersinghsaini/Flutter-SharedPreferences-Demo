import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:testing_projects/login_screen.dart';
import 'package:testing_projects/splash_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            var sharedPref = await SharedPreferences.getInstance();
            sharedPref.setBool(SplashScreenState.KEYLOGIN, false);

            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => LoginScreen(),
              ),
            );
          },
          child: Text('Logout'),
        ),
      ),
    );
  }
}
