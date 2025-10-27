void main() {
  dynamic listaVazia = [];

  var numerosInteiros1 = [1, 2, 3, 4, 5];

  List<int> numerosInteiros2 = [6, 7, 8, 9, 10];

  List<double> numerosDecimais = [1.1, 2.2, 3.3, 4, 5];

  List<String> listaNomes = ['John Doe', 'Jane Doe'];

  dynamic listaComListas = [
    [1, 2, 3],
    ['Um', 'Dois', 'Três'],
  ];

  // Saída
  print('-' * 70);
  print('Lista vazia: $listaVazia');
  print('Lista de números inteiros 1: $numerosInteiros1');
  print('Lista de números inteiros 2: $numerosInteiros2');
  print('Lista de números decimais: $numerosDecimais');
  print('Lista de Strings: $listaNomes');
  print('Lista de Listas: $listaComListas');
  print('-' * 70);
}
