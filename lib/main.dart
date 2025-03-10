import 'package:flutter/material.dart';
import 'package:floodsense/screens/settings_page.dart';
import 'package:floodsense/sensors/water_level.dart';

void main() {
  runApp(const FloodSenseApp());
}

class FloodSenseApp extends StatefulWidget {
  const FloodSenseApp({super.key});

  @override
  State<FloodSenseApp> createState() => _FloodSenseAppState();
}

class _FloodSenseAppState extends State<FloodSenseApp> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    WaterLevelScreen(),
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FloodSense',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        body: _pages[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.water_drop),
              label: 'Sensor Data',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ],
        ),
      ),
    );
  }
}
