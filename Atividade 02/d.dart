// Verificação de ano bissexto: Faça um programa que receba um ano
//e verifique se ele é bissexto, exibindo a resposta.
import 'dart:io';

void main() {
  String? opcao;
  int? data;
  while (opcao != 'n') {
    stdout.write('Digite um ano: ');
    String? input = stdin.readLineSync();
    data = (input!.isNotEmpty && input.length == 4)
        ? int.tryParse(input)
        : null;

    if (data == null) {
      print('Valor inválido!');
      continue;
    }
    ;

    if (data % 4 == 0) {
      print('\nAno Bissexto');
    } else {
      print('\nO Ano não é Bissexto');
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
