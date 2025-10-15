// Faça um programa para converter medidas
import 'dart:io';

void main() {
  print('=== Conversor de Comprimento ===');
  print('1 - Metros para Quilômetros');
  print('2 - Quilômetros para Metros');
  stdout.write('Escolha uma opção: ');
  int opcao = int.parse(stdin.readLineSync()!);

  stdout.write('Digite o valor: ');
  double valor = double.parse(stdin.readLineSync()!);

  if (opcao == 1) {
    double resultado = valor / 1000;
    print('$valor metros = $resultado quilômetros');
  } else if (opcao == 2) {
    double resultado = valor * 1000;
    print('$valor quilômetros = $resultado metros');
  } else {
    print('Opção inválida.');
  }
}