// Faça um programa para calcular o IMC COMPLETO de uma pessoa.
import 'dart:io';
import 'dart:math';

void main() {
  stdout.write('Digite seu peso (kg): ');
  double peso = double.parse(stdin.readLineSync()!);

  stdout.write('Digite sua altura (m): ');
  double altura = double.parse(stdin.readLineSync()!);

  double imc = peso / pow(altura, 2);
  print('Seu IMC é: ${imc.toStringAsFixed(2)}');

  if (imc < 18.5) {
    print('Abaixo do peso');
  } else if (imc < 25) {
    print('Peso normal');
  } else if (imc < 30) {
    print('Sobrepeso');
  } else if (imc < 35) {
    print('Obesidade grau I');
  } else if (imc < 40) {
    print('Obesidade grau II');
  } else {
    print('Obesidade grau III');
  }
}