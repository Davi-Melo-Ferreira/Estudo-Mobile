// Faça um programa que receba e divida 2 números. A saída da divisão precisará ser formatada com 4 casas decimais.
import 'dart:io';

void main() {
  stdout.write('Digite um número: ');
  int a = int.parse(stdin.readLineSync()!);
  stdout.write("Digite mais um número: ");
  int b = int.parse(stdin.readLineSync()!);
  
  double calculo = a / b;
  
  print('Número formatado: ${calculo.toStringAsFixed(4)}');
}