import 'package:flutter/material.dart';

class AlertSensitivityPage extends StatefulWidget {
  const AlertSensitivityPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AlertSensitivityPageState createState() => _AlertSensitivityPageState();
}

class _AlertSensitivityPageState extends State<AlertSensitivityPage> {
  double _sensitivity = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flood Alerts Sensitivity"),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Slider(
            value: _sensitivity,
            min: 0,
            max: 100,
            divisions: 10,
            label: _sensitivity.round().toString(),
            onChanged: (double value) {
              setState(() {
                _sensitivity = value;
              });
            },
          ),
          Text("Sensitivity: ${_sensitivity.round()}"),
        ],
      ),
    );
  }
}
