void main() {
  List<String> listaAlunas = ['Cynthia', 'Ivone', 'Izabelly', 'Priscila'];

  print('-' * 70);
  print('Lista de Alunas:');

  int i = 1;
  for (var aluna in listaAlunas) {
    print('Aluna ${i++}: $aluna');
  }
  print('-' * 70);
  print('${listaAlunas[0]}, também conhecida como ${listaAlunas[3]}');
  print('${listaAlunas[3]}, também conhecida como ${listaAlunas[0]}');
  print('-' * 70);
}
