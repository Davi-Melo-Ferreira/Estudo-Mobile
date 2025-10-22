// Números primos no intervalo: Faça um programa que receba dois números inteiros
// A e B e imprima todos os números primos entre A e B (inclusive).
import 'dart:io';

void main() {
  String? opcao = 's';
  while (opcao != 'n') {
    int? a = null;
    int? b = null;
    int maior = 0;
    int menor = 0;
    while (a == null) {
      stdout.write("\nDigite o valor de A: ");
      String? inputA = stdin.readLineSync();
      a = (inputA != null) ? int.tryParse(inputA) : null;
      if (a == null || a < 1) {
        print('Valor inválido! Somente inteiros maiores que 1');
      }
    }
    while (b == null) {
      stdout.write("Digite o valor de B: ");
      String? inputB = stdin.readLineSync();
      b = (inputB != null) ? int.tryParse(inputB) : null;
      if (b == null || b < 1) {
        print('Valor inválido!  Somente inteiros maiores que 1');
      } else if (b == a) {
        print('A e B devem possuir valores diferentes!');
      }
    }
    if (a > b) {
      maior = a;
      menor = b;
    } else if (b > a) {
      maior = b;
      menor = a;
    }
    print('\nNúmeros Primos entre $menor e $maior');
    for (int i = menor + 1; i < maior; i++) {
      if (i == 2 || i == 3) {
        print(i);
      } else if (i % 2 != 0 && i % 3 != 0 && i % 4 != 0) {
        print(i);
      }
    }

    while(opcao != 'n'){
      stdout.write('Deseja Tentar de novo?(s/n): ');
      String? inputOpcao = stdin.readLineSync();
      opcao = (inputOpcao!.toLowerCase());
      if (opcao != 's' && opcao != 'n') {
        print('Valor inválido!');
      }
    }
  }
}