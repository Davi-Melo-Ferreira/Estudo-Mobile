// Faça um algoritmo que leia dois valores inteiros A e B.
// Se os valores forem iguais deverá somar os dois, caso contrário multiplique A por B.
// Ao final de qualquer um dos cálculos deve-se atribuir o resultado para uma variável C e mostrar seu conteúdo na tela. 
import 'dart:io';

void main() {
  stdout.write('Digite o valor de A: ');
  int a = int.parse(stdin.readLineSync()!);
  stdout.write('Digite o valor de B: ');
  int b = int.parse(stdin.readLineSync()!);

  int c = (a == b) ? a + b : a * b;

  print('Resultado: $c');
}
