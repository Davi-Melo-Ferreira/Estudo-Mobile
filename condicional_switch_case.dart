import 'dart:io';
void main() {
  print('1 - Numero par');
  print('2 - Maior número');
  print('3 - Sair');

  stdout.write("Digite um número(EX: 1, 2 ou 3): ");
  var opcao = double.parse(stdin.readLineSync()!);
  switch (opcao) {
    case 1:
      stdout.write("Digite um número: ");
      var numero = double.parse(stdin.readLineSync()!);
      if (numero % 2 == 0) {
        print('O número $numero é par!');
      } else {
        print("O número $numero é impar!");
      }
      break;

    case 2:
      stdout.write("Digite o valor de A: ");
      var a = double.parse(stdin.readLineSync()!);
      stdout.write("Digite o valor de B: ");
      var b = double.parse(stdin.readLineSync()!);

      if (a > b) {
        print('O número $a é maior que o número $b!');
      } else if (a < b) {
        print('O número $a é menor que o número $b!');
      } else {
        print("Os números são iguais!");
      }
      break;

    case 3:
      print('Saindo do programa...');
      break;
      
    default:
      print('Fora do intervalo de opções!');
  }
}