// Faça um programa para receber um número qualquer e informar na tela se é par ou ímpar. 
import 'dart:io';

void main() {
  stdout.write('Digite um número: ');
  int numero = int.parse(stdin.readLineSync()!);

  if (numero % 2 == 0) {
    print('O número é par.');
  } else {
    print('O número é ímpar.');
  }
}
