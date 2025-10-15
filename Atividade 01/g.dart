// Faça um programa que receba um número qualquer e calcule o dobro e o triplo desse número.
import 'dart:io';

void main() {
  stdout.write('Digite um número inteiro: ');
  int a = int.parse(stdin.readLineSync()!);
  int dobro = a * 2;
  int triplo = a * 3;
  print('Dobro de $a = $dobro');
  print('Triplo de $a = $triplo');
}