import 'package:flutter/material.dart';
import '../services/data_service.dart';
import '../models/aluno.dart';

class AdicionarAlunoPage extends StatefulWidget {
  @override
  _AdicionarAlunoPageState createState() => _AdicionarAlunoPageState();
}

class _AdicionarAlunoPageState extends State<AdicionarAlunoPage> {
  final _nomeController = TextEditingController();
  final _emailController = TextEditingController();

  void _adicionarAluno() {
    final nome = _nomeController.text;
    final email = _emailController.text;

    if (nome.isEmpty || email.isEmpty) return;

    final aluno = Aluno(id: DateTime.now().toString(), nome: nome, email: email);
    DataService.addAluno(aluno);

    Navigator.of(context).pop(); 
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Adicionar Aluno'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _nomeController,
              decoration: InputDecoration(labelText: 'Nome'),
            ),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _adicionarAluno,
              child: Text('Adicionar Aluno novo'),
            ),
          ],
        ),
      ),
    );
  }
}

