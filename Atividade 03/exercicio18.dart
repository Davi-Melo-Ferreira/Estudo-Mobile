// 18. Checagem de Inclusão Total de Elementos
// Dadas duas listas de inteiros, Lista Principal e Lista Subconjunto,
// verifique se todos os elementos da Lista Subconjunto
// estão presentes na Lista Principal.
// O resultado deve ser um valor booleano (true ou false).


import 'dart:io';

void main() {
    bool verify = true;
    List<int> listaPrincipal = [1, 2, 3, 4, 5, 6, 7, 8];
    List<int> listaSubconjunto = [1, 2, 3, 4, 5, 6, 7, 8];
  while (true) {
    for (int i in listaSubconjunto){
        verify = listaPrincipal.contains(i);
        if (verify == false){
            break;
        }
    }
    print(verify);
    

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