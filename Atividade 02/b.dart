// Fatorial com repetição: Faça um programa que leia um número inteiro positivo
// e calcule seu fatorial usando um loop.
import 'dart:io';

void main() {
  String? opcao;
  int? a;
  int calculo = 1;

  while (opcao != 'n') {

    stdout.write("\nDigite um valor para o fatorial: ");
    String? inputA = stdin.readLineSync();
    a = (inputA != null) ? int.tryParse(inputA) : null;
    if (a == null || a < 1) {
      print('Valor inválido! Somente inteiros maiores que 1');
      continue;
    }

    for (int i = a; i != 0; i--) {
      calculo *= i;
      if (i == 1) {
        stdout.write('$i ');
      } else {
        stdout.write('$i x ');
      }
    }
    print('= $calculo\n');

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
