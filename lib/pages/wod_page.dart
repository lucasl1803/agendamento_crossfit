import 'package:flutter/material.dart';

class WodPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WOD do Dia"),
      ),
      body: Center(
        child: Text(
          'Hoje, o WOD é: \n\nSquats + Push-ups + Burpees',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
