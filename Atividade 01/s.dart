// Faça um programa para calcular juros.
import 'dart:io';

void main() {
  stdout.write('Capital inicial (R\$): ');
  double capital = double.parse(stdin.readLineSync()!);

  stdout.write('Taxa de juros (% ao mês): ');
  double taxa = double.parse(stdin.readLineSync()!);

  stdout.write('Tempo (meses): ');
  double tempo = double.parse(stdin.readLineSync()!);

  double juros = (capital * taxa * tempo) / 100;
  double montante = capital + juros;

  print('Juros: R\$${juros.toStringAsFixed(2)}');
  print('Montante final: R\$${montante.toStringAsFixed(2)}');
}
