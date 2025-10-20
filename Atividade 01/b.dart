// Faça um programa que peça 2 valores. Calcule e imprima  a soma,
// o produto, a subtração, a divisão, o resto da divisão e a divisão inteira.

// tryParse retorna null caso o número não seja o que ele espera que seja
// Parse da erro caso não retorne o que deseja
import 'dart:io';

void main() {
  String? opcao;
  while (opcao != 'n') {
    int? a;
    int? b;

    while (a == null) {
      stdout.write('Entre com o valor de A(somente inteiros): ');
      String? inputA = stdin.readLineSync();
      a = inputA != null && inputA.isNotEmpty ? int.tryParse(inputA) : null;
    }

    while (b == null) {
      stdout.write('Entre com o valor de B(somente inteiros): ');
      String? inputB = stdin.readLineSync();
      b = inputB != null && inputB.isNotEmpty ? int.tryParse(inputB) : null;
    }

    int soma = a + b;
    int produto = a * b;
    int subtracao = a - b;
    double divisao = a / b;
    int resto = a % b;
    int divisaoInteira = a ~/ b;

    print('Soma $a + $b = $soma');
    print('Produto $a * $b = $produto');
    print('Subtração $a - $b = $subtracao');
    print('Divisão $a / $b = $divisao');
    print('Resto $a % $b = $resto');
    print('Divisão inteira $a ~/ $b = $divisaoInteira\n');

    while (opcao == 's' || opcao == 'n') {
      stdout.write('Deseja continuar?(s/n): ');
      String? inputOpcao = stdin.readLineSync();
      opcao = inputOpcao!;

      if (opcao.isNotEmpty) {
        if (opcao != 's' || opcao != 'n') {
          print(
            'Valor inválido. Certifique-se de entrar com números inteiros.',
          );
        }
      }
    }
  }
}
