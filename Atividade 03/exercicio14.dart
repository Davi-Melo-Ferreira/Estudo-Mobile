// 14. Encontrando o Item Mais Caro
// Dada uma lista de Maps, onde cada Map representa um item
// com as chaves "nome" (String) e "preco" (double),
// encontre e imprima o nome do item que possui o maior preço.

import 'dart:io';

void main() {
    List<String> listaNomes = ['banana', 'fita', 'camisinha', 'sonífero', 'água'];
    List<double> listaPreco = [22.13, 17.22, 19.00, 100.67, 20.5];
  while (true) {
    
    List<double> listaCopia = listaPreco.sublist(0);
    listaCopia.sort();
    
    print('Produto com maior preço:');
    var indc = listaCopia.length - 1;
   for (int i = listaPreco.length - 1; i >= 0; i--){
       if (listaPreco[i] == listaCopia[indc]){
           print('Nome: ${listaNomes[i]} - Preço: ${listaPreco[i]}');
       }
   }
    

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