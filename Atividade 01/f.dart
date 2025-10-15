// Faça um programa que recebe um número inteiro e mostre o sucessor e antecessor.
import 'dart:io';

void main() {
  stdout.write('Digite um número inteiro: ');
  int numero = int.parse(stdin.readLineSync()!);
  print('Número : $numero');
  print('-' * 10);
  numero --;
  print('Antecessor : $numero');
  print('-' * 10);
  numero ++;
  numero ++;
  print('Sucessor : $numero');
  print('-' * 10);
}