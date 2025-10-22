// Cálculo de velocidade média:
// Faça um programa que receba as distâncias percorridas
// a cada intervalo de tempo e calcule a velocidade média total do percurso.
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