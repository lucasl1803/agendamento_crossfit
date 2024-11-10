import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/schedule_page.dart'; 
import 'pages/wod_page.dart'; 

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Agenda de Aulas de Crossfit',
      initialRoute: '/',  
      routes: {
        '/': (context) => HomePage(),
        '/agendar': (context) => SchedulePage(), 
        '/wod': (context) => WodPage(), 
      },
    );
  }
}
