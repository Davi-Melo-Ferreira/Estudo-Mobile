// 16. Interseção de Duas Listas
// Dadas duas listas de inteiros,
// crie uma nova lista contendo apenas os elementos
// que estão presentes em ambas as listas (a interseção &&).

import 'dart:io';

void main() {
    List<int> listaInteiros1 = [1, 4, 5, 9, 4, 78, 10, 22, 18];
    List<int> listaInteiros2 = [1, 2, 10, 18, 4, 14];
    List<int> listaIntersecao = [];
  while (true) {
    for (int i = listaInteiros2.length - 1; i >= 0; i--){
        if(listaInteiros1.contains(listaInteiros2[i])){
            listaIntersecao.add(listaInteiros2[i]);
        }
    }
    print('Interseção: $listaIntersecao');

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