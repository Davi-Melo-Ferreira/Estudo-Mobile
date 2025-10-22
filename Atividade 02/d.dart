// Verificação de ano bissexto: Faça um programa que receba um ano
//e verifique se ele é bissexto, exibindo a resposta.
import 'dart:io';

void main() {
  String? opcao = null;

  while (opcao != 'n') {
    int? data = null;

    while (data == null) {
      stdout.write('Digite um ano: ');
      String? input = stdin.readLineSync();
      data = (input!.isNotEmpty && input.length == 4)
          ? int.tryParse(input)
          : null;
      if (data == null) {
        print('Valor inválido!');
      }
      ;
    }
    if (data % 4 == 0) {
      print('\nAno Bissexto');
    } else {
      print('\nO Ano não é Bissexto');
    }

    while (opcao != 'n' && opcao != 's') {
      stdout.write('Deseja continuar?(s/n): ');
      String? inputOpcao = stdin.readLineSync();
      opcao = inputOpcao!;
    }
  }
}
