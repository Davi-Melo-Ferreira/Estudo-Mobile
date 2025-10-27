// Determinação do maior divisor comum (MDC):
// Faça um programa que receba dois números inteiros
// e calcule o MDC usando o algoritmo de Euclides com repetição.
import 'dart:io';

void main() {
  String? opcao;
  int? a;
  int? b;

  while (opcao != 'n') {
    stdout.write('Digite o primeiro número inteiro: ');
    String? inputA = stdin.readLineSync();
    a = (inputA != null) ? int.tryParse(inputA) : null;
    if (a == null || a <= 0) {
      print('Valor inválido!');
      continue;
    }

    stdout.write('Digite o segundo número inteiro: ');
    String? inputB = stdin.readLineSync();
    b = (inputB != null) ? int.tryParse(inputB) : null;
    if (b == null || b <= 0) {
      print('Valor inválido!');
      continue;
    }

    if (a == b){
      print('O MDC de $a e $b é $a');
      } else {
      int maior = (a > b) ? a : b;
      int menor = (a < b) ? a : b;
      int resto;

      while (menor != 0) {
        resto = maior % menor;
        maior = menor;
        menor = resto;
      }

      print('O MDC de $a e $b é $maior');
    }

    while (true) {
      stdout.write('Deseja Tentar de novo?(s/n): ');
      String? inputOpcao = stdin.readLineSync();
      opcao = (inputOpcao!.toLowerCase());
      if (opcao != 's' && opcao != 'n') {
        print('Valor inválido!');
      } else {
        break;
      }
    }
  }
}
