import 'package:flutter/material.dart';

class SchedulePage extends StatefulWidget {
  @override
  _SchedulePageState createState() => _SchedulePageState();
}

class _SchedulePageState extends State<SchedulePage> {
  String _horaSelecionada = "Escolha um horário";

  final List<String> horarios = [
    "07:00 - 08:00",
    "08:00 - 09:00",
    "09:00 - 10:00",
    "10:00 - 11:00",
    "17:00 - 18:00",
    "18:00 - 19:00",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Agendamento de Aula"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            DropdownButton<String>(
              value: _horaSelecionada,
              items: horarios.map((String horario) {
                return DropdownMenuItem<String>(
                  value: horario,
                  child: Text(horario),
                );
              }).toList(),
              onChanged: (newValue) {
                setState(() {
                  _horaSelecionada = newValue!;
                });
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Aula agendada para $_horaSelecionada!')),
                );
              },
              child: Text("Confirmar Agendamento"),
            ),
          ],
        ),
      ),
    );
  }
}
