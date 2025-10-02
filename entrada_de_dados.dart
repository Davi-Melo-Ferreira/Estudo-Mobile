import 'dart:io';
void main() {
  stdout.write('Entre com seu nome: ');

  // String? permite que a variável permita null caso o usuario não digite nada
  String? nome = stdin.readLineSync();

  nome = (nome == null || nome.isEmpty) ? 'Não informado' : nome;

  stdout.write('Data de Nascimento: ');

  // Lemos a entrada como String? (pode ser null)
  String? intputIdade = stdin.readLineSync();

  int? idade = (intputIdade != null && intputIdade.isNotEmpty)
    ? int.tryParse(intputIdade)
      : null;

  if (idade == null){
    print('Idade inválida! Digite um número válido.');
    return;
  }

  print('');
  print('Seu nome é $nome');
  print('Nascimento $idade');
}