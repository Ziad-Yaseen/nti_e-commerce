import 'package:flutter/material.dart';

class SignupView extends StatefulWidget {
  const SignupView({super.key});

  @override
  State<SignupView> createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
  late TextEditingController email;
  late TextEditingController pass;
  late TextEditingController name;
  late TextEditingController conPass;

  @override
  void initState() {
    email = TextEditingController();
    pass = TextEditingController();
    name = TextEditingController();
    conPass = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    email.dispose();
    pass.dispose();
    name.dispose();
    conPass.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome Again'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20),
              TextField(
                controller: email,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.blue.shade100),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.blue.shade900),
                  ),
                  label: Text(
                    'Name',
                    style: TextStyle(color: Colors.blue.shade900),
                  ),
                  prefixIconColor: Colors.blue.shade700,
                  prefixIcon: Icon(Icons.person),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: email,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.blue.shade100),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.blue.shade900),
                  ),
                  label: Text(
                    'Email',
                    style: TextStyle(color: Colors.blue.shade900),
                  ),
                  prefixIconColor: Colors.blue.shade700,
                  prefixIcon: Icon(Icons.email),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                obscureText: true,
                controller: pass,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.blue.shade100),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.blue.shade900),
                  ),
                  label: Text(
                    'Password',
                    style: TextStyle(color: Colors.blue.shade900),
                  ),
                  prefixIconColor: Colors.blue.shade700,
                  prefixIcon: Icon(Icons.lock),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                obscureText: true,
                controller: pass,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.blue.shade100),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.blue.shade900),
                  ),
                  label: Text(
                    'Confirm Password',
                    style: TextStyle(color: Colors.blue.shade900),
                  ),
                  prefixIconColor: Colors.blue.shade700,
                  prefixIcon: Icon(Icons.lock),
                ),
              ),
              SizedBox(height: 60),
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.blue.shade100,
                  foregroundColor: Colors.blue.shade900,
                  minimumSize: Size(180, 40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(12),
                  ),
                ),
                onPressed: () {},
                child: Text('Create Account'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
