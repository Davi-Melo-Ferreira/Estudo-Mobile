import 'dart:io';
void main() {
  stdout.write('Entre com o valor de a: ');
  var a = int.parse(stdin.readLineSync()!);
  stdout.write('Entre com o valor de b: ');
  var b = int.parse(stdin.readLineSync()!);

  print('-' * 70);
  print('a == b: ${a == b}');
  print('a != b: ${a != b}');
  print('a > b: ${a > b}');
  print('a < b: ${a < b}');
  print('a >= b: ${a >= b}');
  print('a <= b: ${a <= b}');
  print('-' * 70);

  bool igual = a == b;
  print('Verificação de igualdade: $igual');
  print('-' * 70);
}