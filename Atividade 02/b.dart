// Fatorial com repetição: Faça um programa que leia um número inteiro positivo
// e calcule seu fatorial usando um loop.
import 'dart:io';

void main() {
  String? opcao = null;

  while (opcao != 'n') {
    int? a = null;
    opcao = null;
    int calculo = 1;

    while (a == null) {
      stdout.write("\nDigite um valor para o fatorial: ");
      String? inputA = stdin.readLineSync();
      a = (inputA != null) ? int.tryParse(inputA) : null;
      if (a == null || a < 1) {
        print('Valor inválido! Somente inteiros maiores que 1');
      }
    }

    for (int i = a; i != 0; i--) {
      calculo *= i;
      if (i == 1) {
        stdout.write('$i ');
      } else{
        stdout.write('$i x ');
      }
    }
    print('= $calculo\n');

    while (opcao != 's' && opcao != 'n') {
      stdout.write('Deseja Tentar de novo?(s/n): ');
      String? inputOpcao = stdin.readLineSync();
      opcao = (inputOpcao!.toLowerCase());
      if (opcao != 's' && opcao != 'n') {
        print('Valor inválido!');
      }
    }
  }
}
