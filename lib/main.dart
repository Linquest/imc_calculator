import 'dart:io';
import 'src/pessoa.dart';
import 'src/calculadora_imc.dart';

void main() {
  print('Digite o seu nome:');
  String nome = stdin.readLineSync("Luis");

  print('Digite o seu peso em kg:');
  double peso = double.parse(stdin.readLineSync());

  print('Digite a sua altura em metros:');
  double altura = double.parse(stdin.readLineSync());

  Pessoa pessoa = Pessoa(nome, peso, altura);
  CalculadoraIMC calculadora = CalculadoraIMC(pessoa);

  try {
    double imc = calculadora.calcular();
    String classificacao = calculadora.classificar();
    print('O IMC de ${pessoa.nome} é ${imc.toStringAsFixed(2)}, classificado como $classificacao');
  } catch (e) {
    print('Erro ao calcular IMC: $e');
  }
}
