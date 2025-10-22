// Classificação de ângulos: Faça um programa que receba um ângulo em graus
// e classifique-o como agudo (<90°), reto (90°),
// obtuso (>90° e <180°) ou rente (180°).
import 'dart:io';
void main() {
  String? opcao = 's';

  while (opcao != 'n') {
    stdout.write('Deseja Tentar de novo?(s/n): ');
    String? inputOpcao = stdin.readLineSync();
    opcao = (inputOpcao!.toLowerCase());
    if (opcao != 's' && opcao != 'n') {
      print('Valor inválido!');
    }
  }
}