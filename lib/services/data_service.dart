import '../models/aluno.dart';
import '../models/aula.dart';

class DataService {
  // Lista de alunos e aulas
  static final List<Aluno> _alunos = [];
  static final List<Aula> _aulas = [];

  // Métodos para manipular os alunos
  static List<Aluno> getAlunos() {
    return _alunos;
  }

  static void addAluno(Aluno aluno) {
    _alunos.add(aluno);
  }

  // Métodos para manipular as aulas
  static List<Aula> getAulas() {
    return _aulas;
  }

  static void addAula(Aula aula) {
    _aulas.add(aula);
  }
}

