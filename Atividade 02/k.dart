// Determinação do maior divisor comum (MDC):
// Faça um programa que receba dois números inteiros
// e calcule o MDC usando o algoritmo de Euclides com repetição.
import 'dart:io';
void main() {
  String? opcao = 's';

  while (opcao != 'n') {
    stdout.write('Deseja Tentar de novo?(s/n): ');
    String? inputOpcao = stdin.readLineSync();
    opcao = (inputOpcao!.toLowerCase());
    if (opcao != 's' && opcao != 'n') {
      print('Valor inválido!');
    }
  }
}