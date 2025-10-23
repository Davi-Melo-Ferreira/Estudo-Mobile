import 'dart:io';
void main() {
  String? input;
  String? a;
  String? b;
  while (input != 'n') {
    stdout.write("\nDigite o valor de A: ");
    a = stdin.readLineSync();
    int? numero1 = (a != null) ? int.tryParse(a) : null;

    if (numero1 == null) {
      print('Número inválido! Digite um valor inteiro.');
      continue;
    }

    stdout.write("\nDigite o valor de B: ");
    b = stdin.readLineSync();
    int? numero2 = (b != null) ? int.tryParse(b) : null; 

    if (numero2 == null) {
      print('Número inválido! Digite um valor inteiro.');
      continue;
    }

    

    while (true) {
      stdout.write('Deseja continuar? (s/n): ');
      input = stdin.readLineSync();
      if (input != null && input.isNotEmpty) {
        if (input == 's') {
          break;
        } else if (input == 'n') {
          break;
        }
      }
    }
  }
}