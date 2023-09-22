import 'package:test/test.dart';
import '../lib/src/pessoa.dart';
import '../lib/src/calculadora_imc.dart';

void main() {
  group('CalculadoraIMC', () {
    test('deve calcular o IMC corretamente', () {
      Pessoa pessoa = Pessoa('João', 70.0, 1.75);
      CalculadoraIMC calculadora = CalculadoraIMC(pessoa);
      double imc = calculadora.calcular();
      expect(imc, equals(70.0 / (1.75 * 1.75)));
    });
  });
}
