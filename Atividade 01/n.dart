// Faça um programa para encontrar o dobro de um número caso ele seja positivo
// e o seu triplo caso seja negativo, imprimindo o resultado. 
import 'dart:io';

void main() {
  stdout.write('Digite um número: ');
  double n = double.parse(stdin.readLineSync()!);

  double resultado = (n >= 0) ? n * 2 : n * 3;

  print('Resultado: $resultado');
}