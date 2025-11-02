// 12. Cálculo de Estoque Total de Produtos Ativos
// Dada uma lista de Maps,
// onde cada Map representa um produto com as chaves "nome" (String),
// "estoque" (int) e "ativo" (bool),
// calcule a soma total do estoque de todos os produtos
// que estão com o status "ativo" igual a true.


import 'dart:io';

void main() {
    List<String> listaNomes = ['banana', 'fita adesiva', 'óleo', 'camisinha', 'sonífero'];
    List<int> listaEstoque = [22, 17, 19, 16, 25];
    List<bool> listaAtivos = [false, true, false, true, true];
    List<List> lista = [listaNomes, listaEstoque, listaAtivos];
  while (true) {
      int soma = 0;
    for (int i in listaEstoque){
        var indc = listaEstoque.indexOf(i);
        if(listaAtivos[indc] == true){
            soma += i;
        }
    }
    
    print('Soma de todos os produtos ativos: $soma');
    
    

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