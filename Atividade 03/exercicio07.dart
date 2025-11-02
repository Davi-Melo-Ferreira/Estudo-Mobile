// 7. Criação de Frase com Filtro
// Dada uma lista de strings, crie uma única string (frase)
// concatenando apenas as palavras que terminam com a letra 'R'.
// As palavras devem ser separadas por um espaço na frase final.

import 'dart:io';

void main() {
  List<String> listaStrings = ['Acabar', 'Enjuria', 'Sorte', 'Saudar'];
  while (true) {
    print('Lista Original: $listaStrings');
    String string = listaStrings
        .where((num) => num[num.length - 1].toLowerCase() == 'r').join(' ');
    print('String Com Palavras que Terminam com R: $string');

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
