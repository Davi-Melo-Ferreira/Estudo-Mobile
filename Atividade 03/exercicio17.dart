// 17. Normalização e Classificação de Dados
// Dada uma lista de strings com valores duplicados
// e em ordem aleatória, o objetivo é primeiro remover
// todas as duplicatas e, em seguida,
// ordenar a lista resultante em ordem alfabética.


import 'dart:io';

void main() {
    List<String> lista = ['a', 'i', 'a', 'd', 'g', 'j', 'k', 'd', 'l', 'm', 'g'];
  while (true) {
    lista.shuffle();
    Set<String> listaUnic = lista.toSet();
    lista = listaUnic.toList();
    lista.sort();
    print('Lista sem Duplicatas e em Ordem Alfabética:');
    print(lista);
    

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