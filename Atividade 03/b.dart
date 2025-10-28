// 2. Identificação e Contagem de Ocorrências Distintas
// Dada uma lista de inteiros que contém valores duplicados,
// o desafio é determinar quantos valores únicos existem na lista.
// A solução deve percorrer a lista e construir uma nova coleção
// (ou usar um Set temporário, se permitido, ou uma lista auxiliar)
// para armazenar apenas os elementos que ainda não foram vistos,
// reportando o total de elementos únicos ao final.
import 'dart:io';

void main() {
  while (true) {
    List<int> listaInteiros = [1, 2, 3, 4, 2, 6, 3, 10];
    List<int> listaRepetida = listaInteiros;
    List<int> listaUnicos = [];

    // Cálculo Aqui ↓
    

    print('-' * 70);
    print('\nLista com Todos os elementos únicos:');
    print(listaUnicos);

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
