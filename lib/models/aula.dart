import 'aluno.dart';

class Aula {
  final String id;
  final String nome;
  final String horario;
  final List<Aluno> alunos;

  Aula({
    required this.id,
    required this.nome,
    required this.horario,
    required this.alunos,
  });
}
