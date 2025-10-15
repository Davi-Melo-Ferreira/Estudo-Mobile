// Faça um programa com entrada de dados para calcular a área de 4 objetos.
import 'dart:io';
import 'dart:math';

void main() {
  // Quadrado
  stdout.write('Lado do quadrado: ');
  double lado = double.parse(stdin.readLineSync()!);
  print('Área do quadrado: ${lado * lado}\n');

  // Retângulo
  stdout.write('Base do retângulo: ');
  double base = double.parse(stdin.readLineSync()!);
  stdout.write('Altura do retângulo: ');
  double altura = double.parse(stdin.readLineSync()!);
  print('Área do retângulo: ${base * altura}\n');

  // Círculo
  stdout.write('Raio do círculo: ');
  double raio = double.parse(stdin.readLineSync()!);
  print('Área do círculo: ${(pi * pow(raio, 2)).toStringAsFixed(2)}\n');

  // Triângulo
  stdout.write('Base do triângulo: ');
  double baseT = double.parse(stdin.readLineSync()!);
  stdout.write('Altura do triângulo: ');
  double alturaT = double.parse(stdin.readLineSync()!);
  print('Área do triângulo: ${(baseT * alturaT) / 2}');
}