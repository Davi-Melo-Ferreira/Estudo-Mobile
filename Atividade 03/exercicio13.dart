// 13. Mapeamento de Mapas para Strings Formatadas
// Dada a lista de Maps do exercício anterior (Produtos),
// crie uma nova lista de strings onde cada string é um resumo
// formatado do produto, no formato:
// "Produto [Nome] - Estoque: [Estoque]".

import 'dart:io';

void main() {
    List<String> listaNomes = ['Ana', 'João', 'Marcos', 'Pedro', 'Lucas'];
    List<int> listaIdade = [22, 17, 19, 16, 25];
    List<String> lista = [];
  while (true) {
    
    for (int i = listaNomes.length - 1; i > 0; i--){
        // var idade = listaIdade[i].toString();
        lista.addAll([listaNomes[i], listaIdade[i].toString()]);
    }
    for (String char in lista) {
      if (int.tryParse(char) != null) {
        print('Idade: $char');
      } else {
        stdout.write('Nome: $char - ');
      }
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