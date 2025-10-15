// Faça um programa para conversão de temperaturas (C => F  e F ⇒ C)
import 'dart:io';

void main() {
  stdout.write('Digite a temperatura: ');
  double temp = double.parse(stdin.readLineSync()!);

  stdout.write('Converter para (C/F)? ');
  String tipo = stdin.readLineSync()!.toUpperCase();

  if (tipo == 'F') {
    double fahrenheit = (temp * 9 / 5) + 32;
    print('$temp°C = ${fahrenheit.toStringAsFixed(2)}°F');
  } else if (tipo == 'C') {
    double celsius = (temp - 32) * 5 / 9;
    print('$temp°F = ${celsius.toStringAsFixed(2)}°C');
  } else {
    print('Opção inválida.');
  }
}
