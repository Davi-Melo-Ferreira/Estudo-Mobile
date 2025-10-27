// Contagem regressiva: Faça um programa que receba um número inteiro positivo
// e faça uma contagem regressiva até zero, imprimindo cada número.
import 'dart:io';

void main() {
  String? opcao;
  int? numero;

  while (opcao != 'n') {
    stdout.write('Digite um número inteiro positivo: ');
    String? input = stdin.readLineSync();
    numero = (input != null) ? int.tryParse(input) : null;

    if (numero == null || numero < 0) {
      print('Valor inválido!');
      continue;
    }

    for (int i = numero; i >= 0; i--) {
      print(i);
    }

    while (true) {
      stdout.write('Deseja continuar?(s/n): ');
      String? inputOpcao = stdin.readLineSync();
      if (inputOpcao != null) {
        if (inputOpcao != 's' && inputOpcao != 'n') {
          print('Valor inválido!');
        } else {
          opcao = inputOpcao;
          break;
        }
      }
    }
  }
}
