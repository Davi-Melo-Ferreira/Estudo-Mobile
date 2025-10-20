// Faça um programa que peça um ano qualquer. O programa deverá calcular e imprimir a idade.
import 'dart:io';

void main() {
  stdout.write('Digite um ano: ');
  int ano = int.parse(stdin.readLineSync()!);

  int anoAtual = DateTime.now().year;
  int idade = anoAtual - ano;

  print('Sua idade é: $idade');
}