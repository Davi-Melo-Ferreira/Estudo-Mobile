import 'dart:io';

void main() {
  var numeros = [1, 2, 3, 4, 5];
  var letras = ['a', 'b', 'c', 'd', 'e'];

  print('-' * 70);

  numeros.forEach((numero) => print(numero));

  print('-' * 70);

  letras.forEach((e) => stdout.write('$e '));

  print('');
  print('-' * 70);
}
