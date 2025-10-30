// 10. Reversão Manual da Ordem dos Elementos
// Dada uma lista de strings, crie uma nova lista que contenha os mesmos elementos,
//  mas na ordem inversa da lista original. O uso de List.
//  reversed é permitido para fins de comparação,
//  mas a implementação principal deve usar uma estrutura de repetição (for ou while).
import 'dart:io';

void main() {
  List<String> listaNova = [];
  List<String> listaStrings = ['Primeiro', 'Segundo', 'Terceiro', 'Quarto'];
  while (true) {
    print('Lista Original: $listaStrings');
    for (int i = listaStrings.length - 1; i > -1; i--) {
      listaNova.add(listaStrings[i]);
    }
    print('Lista Nova: $listaNova');

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
