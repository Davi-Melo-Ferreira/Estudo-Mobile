
import 'dart:io';

void main() {
  bool verificarInteiros = true;
  while (true) {
    List<int> listaInteiros = [];
    // Entrada de Dados ↓
    stdout.write("Digite valores inteiros de uma lista(separe com espaços): ");
    String? input = stdin.readLineSync();
    input = (input != null && input.isNotEmpty) ? input.trim() : null;

    if (input != null) {
      List<String> listaString = input.split(' ');
      for (String char in listaString) {
        int? inteiro = int.tryParse(char);
        if (inteiro != null) {
          listaInteiros.add(inteiro);
          verificarInteiros = true;
        } else {
          print('$char não é um inteiro');
          verificarInteiros = false;
          continue;
        }
      }
      if (verificarInteiros == false) {
        continue;
      }
    } else {
      print('Valor nulo não é permitido!');
      continue;
    }

    // Cálculo Aqui ↓

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
