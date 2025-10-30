// 11. Seleção de Registros por Idade Mínima
// Dada uma lista de Maps,
// onde cada Map representa um usuário com as chaves "nome" (String) e "Idade" (int),
// filtre e colete em uma nova lista apenas os Maps dos usuários que são maiores de 18 anos.
import 'dart:io';

void main() {
  var listaMaps = [
    {'Nome': 'Ana', 'Idade': 22},
    {'Nome': 'Bruno', 'Idade': 17},
    {'Nome': 'Carla', 'Idade': 19},
    {'Nome': 'Daniel', 'Idade': 16},
    {'Nome': 'Eva', 'Idade': 25},
  ];
  while (true) {
    print('Lista Original: ${listaMaps}');

    for (int i = 0; i < listaMaps.length; i++) {
      // utilizando as int pois a idade é interpretada como Object
      if ((listaMaps[i]['Idade']! as int) < 18) {
        listaMaps.removeAt(i);
        i--; // Ajusta o índice após a remoção
      }
    }

    print('\nLista Filtrada (maiores de 18 anos)');
    for (var usuario in listaMaps) {
      print('Nome: ${usuario['Nome']}, Idade: ${usuario['Idade']}');
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
