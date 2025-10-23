// Soma dos múltiplos: Faça um programa que receba um número inteiro N
// e calcule a soma de todos os múltiplos de 3 ou 5 menores que N.
import 'dart:io';

void main() {
  String? opcao;
  
  while (opcao != 'n') {
    int soma = 0;

    stdout.write('Digite um número inteiro positivo: ');
    String? input = stdin.readLineSync();
    int? numero = (input != null) ? int.tryParse(input) : null;

    if (numero == null || numero < 0) {
      print('Valor inválido!');
      continue;
    }

    for (int i = 0; i < numero; i++) {
      if (i % 3 == 0 || i % 5 == 0) {
        soma += i;
      }
    }

    print('A soma dos múltiplos de 3 ou 5 menores que $numero é: $soma');

    while(true){
      stdout.write('Deseja Tentar de novo?(s/n): ');
      String? inputOpcao = stdin.readLineSync();
      if (inputOpcao != null) {
        if (inputOpcao != 's' && inputOpcao != 'n') {
          print('Valor inválido!');
        } else {
          opcao = inputOpcao;
          break;
        }
      }
    }
  }
}
