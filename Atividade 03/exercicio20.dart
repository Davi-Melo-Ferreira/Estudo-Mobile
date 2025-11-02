// 20. Particionamento de Lista em Positivos e Não-Positivos
// Dada uma lista de números inteiros (positivos, negativos e zero),
// crie uma nova lista onde todos os números positivos
// aparecem primeiro, seguidos pelos números não-positivos
// (zero e negativos).
// A ordem relativa dentro de cada grupo deve ser mantida.


import 'dart:io';
import 'dart:math';
void main() {
    List<int> listaPrincipal = [3, -1, 0, 5, -2, 4, 0, -7];
    List<int> listaNova = [];
    
  while (true) {
    listaNova = listaPrincipal.where((n) => n > 0).toList();
    for (int i in listaPrincipal){
        if (listaNova.contains(i)){
            
        } else{
            listaNova.add(i);
        }
    }
    
    print('Lista Original:');
    print(listaPrincipal);
    print('\nLista Nova:');
    print(listaNova);

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