// Resfriamento de um líquido:
// Faça um programa que simule o resfriamento de um líquido
// a partir de uma temperatura inicial até atingir a temperatura ambiente(25°C).
// A cada segundo, a temperatura diminui 2%.
// Imprima a temperatura a cada segundo.
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