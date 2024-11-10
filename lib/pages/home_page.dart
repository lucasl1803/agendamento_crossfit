import 'package:flutter/material.dart';
import 'package:agenda_crossfit/pages/schedule_page.dart';
import 'package:agenda_crossfit/pages/wod_page.dart';
import 'package:agenda_crossfit/components/class_card.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Agenda de Aulas de Crossfit"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
            ClassCard(), 
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/agendar');
              },
              child: Text("Agendar Aula"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/wod');
              },
              child: Text("Ver WOD do Dia"),
            ),
          ],
        ),
      ),
    );
  }
}
