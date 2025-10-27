void main() {

  List<int> lista = [1, 2, 3, 4, 5];
  print('Lista original: $lista');
  print('sUBLISTA GERADA: ${lista.sublist(1, 3)}');
  print('-' * 70);

  List<String> listaVogais2 = ['u', 'a', 'o' 'i', 'e'];
  print('Lista original: $listaVogais2');
  listaVogais2.sort();
  print('Lista nova: $listaVogais2');
  print('-' * 70);

  // reversed
  List<int> listaNumeros2 = [1, 2, 3, 4, 5, 6];
  print('Lista original: $listaNumeros2');
  var listaReversa = listaNumeros2.reversed.toList();
  print('Lista nova: $listaReversa');
  print('-' * 70);

  // shuffle
  List<String> listaVerduras = ['Couve', 'Serraia', 'Alface', 'Rúcula'];
  print('Lista original: $listaVerduras');
  listaVerduras.shuffle();
  print('Lista embaralhada: $listaVerduras');
  print('-' * 70);
}