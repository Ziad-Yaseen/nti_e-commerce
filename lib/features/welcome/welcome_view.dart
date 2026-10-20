import 'package:flutter/material.dart';
import 'package:nti_e_commerce/features/login/login_view.dart';
import 'package:nti_e_commerce/features/signup/signup_view.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 40),
            Text(
              "Welcome to our store",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blue.shade900,
              ),
            ),
            SizedBox(height: 20),
            Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(200, 40),
                backgroundColor: Colors.cyan.shade100,
                foregroundColor: Colors.blue.shade900,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: ((context) => LoginView())),
                );
              },
              child: Text("Login"),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(200, 40),
                backgroundColor: Colors.cyan.shade100,
                foregroundColor: Colors.blue.shade900,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: ((context) => SignupView())),
                );
              },
              child: Text("Sign Up"),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
