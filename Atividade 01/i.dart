// Faça um programa que receba um número inteiro. O programa deverá imprimir tabuada de multiplicação deste número.
import 'dart:io';

void main() {
  stdout.write("Digite um número inteiro: ");
  int a = int.parse(stdin.readLineSync()!);
  
  print("$a x 1 = ${a*1}");
  print("$a x 2 = ${a*2}");
  print("$a x 3 = ${a*3}");
  print("$a x 4 = ${a*4}");
  print("$a x 5 = ${a*5}");
  print("$a x 6 = ${a*6}");
  print("$a x 7 = ${a*7}");
  print("$a x 8 = ${a*8}");
  print("$a x 9 = ${a*9}");
  print("$a x 10 = ${a*10}");
}