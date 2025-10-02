import 'dart:io';
void main() {
  stdout.write('Entre com o valor de A: ');
  int a = int.parse(stdin.readLineSync()!);

  stdout.write('Entre com o valor de B: ');
  int b = int.parse(stdin.readLineSync()!);

  int soma = a + b;
  int subtracao = a - b;
  int produto = a * b;
  double divisao = a / b;
  int divInteira = a ~/ b;
  int restoDivisao = a % b;

  print('-' * 70);
  print('A soma de $a + $b é: $soma');
  print('A subtração de $a - $b é: $subtracao');
  print('O produto de $a * $b é: $produto');
  print('A divisão de $a / $b é: ${divisao.toStringAsFixed(2)}');
  print('A divisão inteira de $a ~/ $b é: $divInteira');
  print('O resto da divisão de $a % $b é: $restoDivisao');
  print('-' * 70);
}