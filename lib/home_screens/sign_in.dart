import 'package:floodsense/screens/alert_sensitivity_page.dart';
import 'package:flutter/material.dart';
import 'package:floodsense/home_screens/home.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    // Define responsive icon size
    double iconSize = size.width * 0.12; // 12% of the screen width for icons
    double iconSpacing = size.width * 0.05; // 5% of the screen width for spacing between icons

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.08),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: size.height * 0.12),
              Text(
                'WELCOME',
                style: TextStyle(
                  fontSize: size.width * 0.08,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF11213D),
                ),
              ),
              SizedBox(height: size.height * 0.08),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Username',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 8),
              TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person_outline, color: Colors.grey),
                  hintText: 'Username',
                  filled: true,
                  fillColor: Colors.grey[100],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black26),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Password',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 8),
              TextField(
                obscureText: _obscureText,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.vpn_key_outlined, color: Colors.grey),
                  hintText: 'Password',
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscureText ? Icons.visibility_off : Icons.visibility,
                      color: Colors.grey,
                    ),
                    onPressed: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                  ),
                  filled: true,
                  fillColor: Colors.grey[100],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black26),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF11213D),
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (_) => AlertSensitivityPage()),
                  );
                },
                child: Text(
                  'Sign in',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      // Add Google sign-in functionality here
                    },
                    child: Icon(
                      Icons.g_mobiledata,
                      size: iconSize,
                      color: Colors.red,
                    ),
                  ),
                  SizedBox(width: iconSpacing),
                  GestureDetector(
                    onTap: () {
                      // Add Facebook sign-in functionality here
                    },
                    child: Icon(
                      Icons.facebook,
                      size: iconSize * 0.9, // Slightly smaller Facebook icon
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.1),
            ],
          ),
        ),
      ),
    );
  }
}
