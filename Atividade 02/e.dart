// Tabela de velocidades: Faça um programa que leia o tempo (em segundos)
// e a aceleração constante de um objeto e imprima sua velocidade
// a cada segundo até o tempo informado.
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