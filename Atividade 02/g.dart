// Sequência de potências:Faça um programa que receba um número inteiro N
// e imprima as potências de 2 de 0 até N (2⁰, 2¹, ..., 2ᴺ).
import 'dart:io';
import 'dart:math';
void main() {
  String? opcao;

  while (opcao != 'n') {
    stdout.write('Digite um número inteiro positivo: ');
    String? input = stdin.readLineSync();

    int? numero = (input != null) ? int.tryParse(input) : null;
  

    if (numero == null || numero < 0) {
      print('Valor inválido!');
      continue;
    }

    for (int i = 0; i <= numero; i++) {
      num potencia = pow(2, i);
      print('2 ^ $i = $potencia');
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