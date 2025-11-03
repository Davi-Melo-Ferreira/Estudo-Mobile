// 2. Identificação e Contagem de Ocorrências Distintas
// Dada uma lista de inteiros que contém valores duplicados,
// o desafio é determinar quantos valores únicos existem na lista.
// A solução deve percorrer a lista e construir uma nova coleção
// (ou usar um Set temporário, se permitido, ou uma lista auxiliar)
// para armazenar apenas os elementos que ainda não foram vistos,
// reportando o total de elementos únicos ao final.
import 'dart:io';

void main() {
  List<int> listaInteiros = [];
  List<int> listaUnicos = [];
  while (true) {
    bool verificarInteiros = true;

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
          break;
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
    Set<int> listaRepetida = listaInteiros.toSet();

    for (int i in listaRepetida) {
      int verificacao = 0;
      for (int numero in listaInteiros) {
        if (numero == i) {
          verificacao += 1;
        }
      }
      if (verificacao == 1) {
        listaUnicos.add(i);
      }
    }
    print('-' * 70);
    print('\nLista com Todos os elementos únicos:');
    print(listaUnicos);
    print('-' * 70);
    print('\nTotal de elementos únicos:');
    print(listaUnicos.length);

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
