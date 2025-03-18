import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../auth_services.dart';
import 'LoginScreen.dart';

class HomeScreen extends StatelessWidget {
  final User? user = FirebaseAuth.instance.currentUser; // Get the current user

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () async {
              await AuthService().signOut(); // Sign out the user
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (_) => LoginScreen()), // Redirect to login screen
              );
            },
          )
        ],
      ),
      body: Center(
        child: user == null
            ? Text('No user signed in')
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Welcome, ${user?.displayName ?? 'User'}!',
                    style: TextStyle(fontSize: 24),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Email: ${user?.email}',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () async {
                      await AuthService().signOut(); // Sign out the user
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (_) => LoginScreen()), // Redirect to login
                      );
                    },
                    child: Text('Sign Out'),
                  ),
                ],
              ),
      ),
    );
  }
}
