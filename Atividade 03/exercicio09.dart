// 9. Filtragem de Emails Válidos (Regra Simples)
// Dada uma lista de strings que supostamente são endereços de email,
// filtre e colete em uma nova lista apenas os emails que contêm
// exatamente um caractere '@' e terminam com ".com".

import 'dart:io';

void main() {
  List<String> listaStrings = [
    'João@gmail.com',
    'Marcosgmail.com',
    'Sebastian@gmail.cm',
    'Is@dora@gmail.com',
  ];
  while (true) {
    List<String> listaEmails = listaStrings
        .where((element) => element.endsWith('.com') && element.contains('@'))
        .toList();

    listaEmails.forEach((e) {
      var char = e.split('@');
      if (char.length != 2) {
        listaEmails.remove(e);
      }
    });

    print(listaEmails);

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
