// Resfriamento de um líquido:
// Faça um programa que simule o resfriamento de um líquido
// a partir de uma temperatura inicial até atingir a temperatura ambiente(25°C).
// A cada segundo, a temperatura diminui 2%.
// Imprima a temperatura a cada segundo.
import 'dart:io';

void main() {
  String? opcao;
  double? temp;

  while (opcao != 'n') {
    stdout.write('Digite a temperatura inicial (°C): ');
    String? input = stdin.readLineSync();
    temp = (input != null) ? double.tryParse(input) : null;

    if (temp == null) {
      print('Valor inválido!');
      continue;
    }

    if (temp > 25) {
      for (int i = 0; temp! > 25; i--) {
        temp -= temp * 0.02;
        print('A temperatura inicial diminuiu para ${temp.toStringAsFixed(2)}');
      }
    } else if (temp < 25) {
      for (int i = 0; temp! < 25; i++) {
        temp += temp * 0.02;
        print('A temperatura inicial aumentou para ${temp.toStringAsFixed(2)}');
      }
    } else if (temp == 25) {
      print('A temperatura já está em 25°C');
    }

    while (true) {
      stdout.write('Deseja Tentar de novo?(s/n): ');
      String? inputOpcao = stdin.readLineSync();
      opcao = (inputOpcao!.toLowerCase());
      if (opcao != 's' && opcao != 'n') {
        print('Valor inválido!');
      } else {
        break;
      }
    }
  }
}
