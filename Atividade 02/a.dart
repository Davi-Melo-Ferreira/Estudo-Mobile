// Números primos no intervalo: Faça um programa que receba dois números inteiros
// A e B e imprima todos os números primos entre A e B (inclusive).
import 'dart:io';

void main() {
  String? input;
  String? a;
  String? b;
  int? maior;
  int? menor;

  while (input != 'n') {
    stdout.write("\nDigite o valor de A: ");
    a = stdin.readLineSync();
    int? numero1 = (a != null) ? int.tryParse(a) : null;

    if (numero1 == null) {
      print('Número inválido! Digite um valor inteiro.');
      continue;
    }

    stdout.write("\nDigite o valor de B: ");
    b = stdin.readLineSync();
    int? numero2 = (b != null) ? int.tryParse(b) : null;

    if (numero2 == null) {
      print('Número inválido! Digite um valor inteiro.');
      continue;
    }

    if (numero1 > numero2) {
      maior = numero1;
      menor = numero2;
    } else if (numero2 > numero1) {
      maior = numero2;
      menor = numero1;
    }
    if (maior != null && menor != null){
      print('\nNúmeros Primos entre $menor e $maior');
      for (int i = menor + 1; i < maior; i++) {
        if (i == 2 || i == 3) {
          print(i);
        } else if (i % 2 != 0 && i % 3 != 0 && i % 4 != 0) {
          print(i);
        }
      }
    }

    while (true) {
      stdout.write('Deseja continuar? (s/n): ');
      input = stdin.readLineSync();
      if (input != null && input.isNotEmpty) {
        if (input == 's' || input == 'n') {
          break;
        }
      }
    }
  }
}
