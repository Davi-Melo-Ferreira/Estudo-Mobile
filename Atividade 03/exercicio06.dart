// 6. Filtragem Dupla em Lista de Palavras
// Dada uma lista de palavras (strings),
// filtre e colete em uma nova lista apenas as palavras que satisfazem
// duas condições simultâneas:
// 1 (o comprimento da palavra deve ser maior que 5 caracteres;
// 2 (a palavra deve começar com a letra 'A' (maiúscula ou minúscula)).
import 'dart:io';

void main() {
  List<String> listaStrings = ['Abacaxi', 'Jabuticaba', 'Abóbora', 'Maçã'];
  while (true) {
    print('Lista Original: $listaStrings');
    List<String> listaNova = listaStrings
        .where((num) => num.length > 5 && num[0].toLowerCase() == 'a')
        .toList();
    print('lista Nova: $listaNova');

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
