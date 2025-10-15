// Faça um programa que leia uma variável e some 5 caso seja par ou some 8 caso seja ímpar, imprimir o resultado desta operação. 
import 'dart:io';

void main() {
  stdout.write('Digite um número: ');
  int numero = int.parse(stdin.readLineSync()!);

  int resultado = (numero % 2 == 0) ? numero + 5 : numero + 8;

  print('Resultado: $resultado');
}
