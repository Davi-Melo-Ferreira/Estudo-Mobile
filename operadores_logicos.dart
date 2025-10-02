void main() {
  // stdout.write('Entre com o valor de A: ');
  // int a = int.parse(stdin.readLineSync()!);
  // stdout.write('Entre com o valor de B: ');
  // int b = int.parse(stdin.readLineSync()!);
  // stdout.write('Entre com o valor de C: ');
  // int c = int.parse(stdin.readLineSync()!);
  int a = 20;
  int b = 5;
  int c = 7;

  bool proposicao1 = a > b;
  bool proposicao2 = b > c;

  print('VERDADEIRO --------------');
  print('$a > $b && $b < $c - Resposta: ${proposicao1 && proposicao2}');
  print('$a > $b || $b > $c - Resposta: ${proposicao1 || proposicao2}');
  print('');

  bool proposicao3 = a < b;
  bool proposicao4 = b > c;

  print("FALSO --------------");
  print('$a < $b && $b > $c - Resposta: ${proposicao3 && proposicao4}');
  print('$a > $b || $b > $c - Resposta: ${proposicao3 || proposicao4}');
  print('');

  bool v = true;
  bool f = false;

  print('NEGACAO --------------');
  print('Negando o V = ${!v}');
  print('Negando o F = ${!f}');
}