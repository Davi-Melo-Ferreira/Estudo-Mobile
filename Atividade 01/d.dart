// Faça um programa que peça 4 notas com  entrada de dados. O programa deverá calcular a média das notas digitadas.

import 'dart:io';
void main() {
  stdout.write('Digite o primeiro número inteiro: ');
  int a = int.parse(stdin.readLineSync()!);
  
  stdout.write('Digite o segundo número inteiro: ');
  int b = int.parse(stdin.readLineSync()!);
  
  stdout.write('Digite o terceiro número inteiro: ');
  int c = int.parse(stdin.readLineSync()!);
  
  stdout.write('Digite o quarto número inteiro: ');
  int d = int.parse(stdin.readLineSync()!);
  
  int media = (a + b + c + d) ~/ 4;
  
  print('A média dos números é $media');
}