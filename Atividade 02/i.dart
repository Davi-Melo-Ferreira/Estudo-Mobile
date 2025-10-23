// Classificação de ângulos: Faça um programa que receba um ângulo em graus
// e classifique-o como agudo (<90°), reto (90°),
// obtuso (>90° e <180°) ou rente (180°).
import 'dart:io';

void main() {
  String? opcao = 's';
  int? numero;

  while (opcao != 'n') {
    stdout.write("\nDigite um ângulo: ");
    String? inputA = stdin.readLineSync();
    numero = (inputA != null) ? int.tryParse(inputA) : null;
    if (numero == null || numero < 1) {
      print('Valor inválido! Somente inteiros maiores que 1');
      continue;
    }

    if (numero < 90) {
      print('Ângulo agudo');
    } else if (numero == 90) {
      print('Ângulo reto');
    } else if (numero > 90 && numero < 180) {
      print('Ângulo obtuso');
    } else if (numero == 180) {
      print('Ângulo rente');
    } else {
      print('Não manjo desse ângulo aí');
    }

    while (true) {
      stdout.write('Deseja continuar? (s/n): ');
      String? inputOpcao = stdin.readLineSync();

      if (inputOpcao != null) {
        if (inputOpcao != 's' && inputOpcao != 'n') {
          print("Valor inválido!");
        } else {
          opcao = inputOpcao;
          break;
        }
      }
    }
  }
}
