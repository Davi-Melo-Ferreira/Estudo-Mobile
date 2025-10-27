void main() {

  List<int> listaInteiros = [1, 2, 3];
  print('Lista original: $listaInteiros');
  listaInteiros.add(4);
  print('Lista nova: $listaInteiros');
  print('-' * 70);

  List<String> listaFrutas = ['banana', 'maçã', 'pêra'];
  print('Lista original: $listaFrutas');
  listaFrutas.addAll(['Uva', 'goiaba', 'manga']);
  print('Lista nova: $listaFrutas');
  print('-' * 70);

  List<String> listaNomes = ['João', 'Maria', 'José'];
  print('Lista original: $listaNomes');
  listaNomes.remove('João');
  print('Lista nova: $listaNomes');
  print('-' * 70);

  List<double> listaDouble = [1.1, 2.2, 3.3];
  print('Lista original: $listaDouble');
  listaDouble.removeAt(1);
  print('Lista nova: $listaDouble');
  print('-' * 70);
}