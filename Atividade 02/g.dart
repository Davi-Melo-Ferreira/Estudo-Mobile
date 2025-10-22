// Sequência de potências:Faça um programa que receba um número inteiro N
// e imprima as potências de 2 de 0 até N (2⁰, 2¹, ..., 2ᴺ).
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