// 8. Transformação de Lista de Palavras em Lista de Comprimentos
// Dada uma lista de palavras, crie uma nova lista de inteiros onde cada inteiro
// representa o número de caracteres da palavra correspondente na lista original.

import 'dart:io';

void main() {
  List<String> listaStrings = ['Acabar', 'Enjuria', 'Sorte', 'Saudar'];
  List<int> listaInteiros = [];
  while (true) {
    print('Lista Original: $listaStrings');
    listaStrings.forEach((i) => listaInteiros.add(i.length));
    print('Lista Nova: $listaInteiros');

    while (true) {
      stdout.write('Deseja Recomeçar? (s/n): ');
      String? resposta = stdin.readLineSync();
      // tratamento de null safety
      resposta = (resposta != null && resposta.isNotEmpty) ? resposta : null;

      if (resposta != null) {
        if (resposta == 's') {
          break;
        } else if (resposta == 'n') {
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