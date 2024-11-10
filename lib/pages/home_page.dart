import 'package:flutter/material.dart';
import 'schedule_page.dart'; 
import 'wod_page.dart';      

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    final List<String> agendamentos = [
      'Segunda-feira 08:00 - Crossfit Iniciante',
      'Terça-feira 10:00 - Crossfit Intermediário',
      'Quarta-feira 14:00 - Crossfit Avançado',
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Agenda de Aulas de Crossfit'),
        actions: [
          IconButton(
            icon: Icon(Icons.calendar_today),
            onPressed: () {
              
              Navigator.pushNamed(context, '/agendar');
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            
            Expanded(
              child: ListView.builder(
                itemCount: agendamentos.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(agendamentos[index]),
                    onTap: () {
                      
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Agendamento selecionado!')),
                      );
                    },
                  );
                },
              ),
            ),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/wod');
                  },
                  child: Text('Ver WOD do Dia'),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/agendar');
                  },
                  child: Text('Agendar Aula'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
