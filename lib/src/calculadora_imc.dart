import 'pessoa.dart';


class CalculadoraIMC {
  Pessoa pessoa;

  CalculadoraIMC(this.pessoa);

  double calcular() {
    return pessoa.peso / (pessoa.altura * pessoa.altura);
  }

  String classificar() {
    double imc = calcular();
    if (imc < 16) return 'Magreza grave';
    if (imc < 17) return 'Magreza moderada';
    if (imc < 18.5) return 'Magreza leve';
    if (imc < 25) return 'Saudável';
    if (imc < 30) return 'Sobrepeso';
    if (imc < 35) return 'Obesidade Grau I';
    if (imc < 40) return 'Obesidade Grau II (severa)';
    return 'Obesidade Grau III (mórbida)';
  }
}

