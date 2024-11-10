import 'package:flutter/material.dart';
import '../services/data_service.dart';
import '../models/aluno.dart';

class AlunosListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final alunos = DataService.getAlunos();

    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Alunos da Box'),
      ),
      body: ListView.builder(
        itemCount: alunos.length,
        itemBuilder: (context, index) {
          final aluno = alunos[index];
          return ListTile(
            title: Text(aluno.nome),
            subtitle: Text(aluno.email),
          );
        },
      ),
    );
  }
}
