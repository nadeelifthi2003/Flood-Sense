import 'package:floodsense/water%20level%20app/water%20level.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(FloodSenseApp());
}

class FloodSenseApp extends StatelessWidget {
  const FloodSenseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FloodSense',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false, // Disable debug banner
      home: WaterLevelScreen(), // Directly show the Settings Page
    );
  }
}
