import 'dart:io';

void main() {
  while (true) {
    // Solicita ao usuário um número inteiro
    stdout.write('Digite um número inteiro: ');
    String? entrada = stdin.readLineSync();

    // Verifica se a entrada é nula ou vazia
    if (entrada == null || entrada.trim().isEmpty) {
      print('Entrada inválida!');
      continue;
    }

    // Tenta converter a entrada para int
    int? numero = int.tryParse(entrada);
    if (numero == null) {
      print('Número inválido! Digite um valor inteiro.');
      continue;
    }

    // Exibe a tabuada de 1 a 10 para o número fornecido
    print('\nTabuada do $numero:');
    for (int i = 1; i <= 10; i++) {
      print('$numero x $i = ${numero * i}');
    }

    // Loop para validar a resposta do usuário
    while (true) {
      stdout.write('\nDeseja continuar (s/n)? ');
      String? resposta = stdin.readLineSync();

      // Verifica se a resposta é nula ou vazia
      if (resposta == null || resposta.trim().isEmpty) {
        print('Por favor, digite "s" para sim ou "n" para não.');
        continue; // Pergunta novamente
      }

      // Normaliza a resposta
      resposta = resposta.toLowerCase().trim();

      if (resposta == 's') {
        // Continua o programa (volta ao início do loop principal)
        print('----------------------------------------');
        break;
      } else if (resposta == 'n') {
        print('Fim do programa!');
        return; // Encerra o programa completamente
      } else {
        print('Resposta inválida! Digite apenas "s" ou "n".');
      }
    }
  }
}
