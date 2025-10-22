import 'dart:io';

void main() {
  String? opcao = null;
  while (opcao != 'n') {

    stdout.write('Deseja continuar(s/n): ');
    String? inputOpcao = stdin.readLineSync();
    opcao = (inputOpcao != null && inputOpcao.isNotEmpty) ? inputOpcao : null;
    if(opcao != 's' && opcao != 'n'){
      print('Valor inválido. Certifique-se de entrar com "s" ou "n".');
    }
  }
}