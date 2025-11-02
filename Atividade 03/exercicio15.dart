// 15. Contagem de Ocorrências de Status
// Dada uma lista de Maps,
// onde cada Map representa uma tarefa
// com a chave "status" (String),
// conte e imprima o número total
// de tarefas para cada status distinto.


import 'dart:io';

void main() {
    List<String> listaNomes = ['comer', 'trabalhar', 'estudar', 'jogar', 'dormir'];
    List<String> listaStatus = ['pendente', 'concluido', 'concluido', 'pendente', 'pendente'];
  while (true) {
      int pendente = 0;
      int concluido = 0;
    
    for (int i = listaStatus.length - 1; i >= 0; i--){
        if (listaStatus[i] == 'concluido'){
            concluido += 1;
        } else if(listaStatus[i] == 'pendente'){
            pendente += 1;
        }
    }
    print('Tarefas concluídas: \n$concluido');
    print('Tarefas pendentes: \n$pendente');
    

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