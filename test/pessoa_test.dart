import 'package:test/test.dart';
import '../lib/src/pessoa.dart';

void main() {
  group('Pessoa', () {
    test('deve criar uma pessoa com nome, peso e altura', () {
      Pessoa pessoa = Pessoa('João', 70.0, 1.75);
      expect(pessoa.nome, equals('João'));
      expect(pessoa.peso, equals(70.0));
      expect(pessoa.altura, equals(1.75));
    });
  });
}
