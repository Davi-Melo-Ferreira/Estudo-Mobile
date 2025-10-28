// 1. Filtragem e Soma Condicional de Pares
// Dada uma lista de números inteiros,
// o objetivo é primeiro filtrar apenas os números que são pares e,
// simultaneamente, maiores que 10. Após a filtragem,
// deve-se calcular a soma total desses números restantes.

import 'dart:io';

void main() {
  bool verificarInteiros = true;
  while (true) {
    int soma = 0;
    List<int> listaInteiros = [];
    // Código abaixo ↓
    stdout.write("Digite valores inteiros de uma lista(separe com espaços): ");
    String? input = stdin.readLineSync();
    input = (input != null && input.isNotEmpty) ? input.trim() : null;

    if (input != null) {
      List<String> listaString = input.split(' ');
      for (String char in listaString) {
        int? inteiro = int.tryParse(char);
        if (inteiro != null) {
          listaInteiros.add(inteiro);
          verificarInteiros = true;
        } else {
          print('$char não é um inteiro');
          verificarInteiros = false;
          continue;
        }
      }
      if (verificarInteiros == false) {
        continue;
      }
    } else {
      print('Valor nulo não é permitido!');
      continue;
    }

    for (var i = 0; i < listaInteiros.length; i++) {
      int indc = listaInteiros[i];
      if (indc > 10 && indc % 2 == 0) {
        soma += indc;
        print('$indc');
      }
    }
    print('Soma total dos números restantes: $soma');

    while (true) {
      stdout.write('Deseja Recomeçar? (s/n): ');
      String? resposta = stdin.readLineSync();
      // tratamento de null safety
      resposta = (resposta != null && resposta.isNotEmpty) ? resposta : null;

      if (resposta != null) {
        if (resposta == 's') {
          break;
        } else if (resposta == 'n') {
          print(listaInteiros);
          return;
        } else {
          print('Valor inválido!');
        }
      } else {
        print('Valor nulo não é permitido!');
        continue;
      }
    }
  }
}
