// import 'package:flutter/material.dart';
// import 'package:floodsense/screens/settings_page.dart';
// import 'package:floodsense/sensors/water_level.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'auth_services.dart';

// void main()async {
//    WidgetsFlutterBinding.ensureInitialized();
//    await Firebase.initializeApp();
//   runApp(const FloodSenseApp());

// }

// class FloodSenseApp extends StatefulWidget {
//   const FloodSenseApp({super.key});

//   @override
//   State<FloodSenseApp> createState() => _FloodSenseAppState();
// }

// class _FloodSenseAppState extends State<FloodSenseApp> {
//   int _currentIndex = 0;

//   final List<Widget> _pages = [
//     WaterLevelScreen(),
//     SettingsPage(),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'FloodSense',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       home: Scaffold(
//         body: _pages[_currentIndex],
//         bottomNavigationBar: BottomNavigationBar(
//           currentIndex: _currentIndex,
//           onTap: (index) {
//             setState(() {
//               _currentIndex = index;
//             });
//           },
//           items: const [
//             BottomNavigationBarItem(
//               icon: Icon(Icons.water_drop),
//               label: 'Sensor Data',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.settings),
//               label: 'Settings',
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'auth_services.dart'; // Import auth services

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(); // Initialize Firebase
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Firebase Auth Example',
      home: AuthService().handleAuth(), // Call your auth service
    );
  }
}
