import 'dart:io';

void main() {
  while (true) {
    String? nomeFuncionario;
    String? cargoFuncionario;
    double? salarioFuncionario;

    print('-' * 70);

    stdout.write('Nome do funcionário: ');
    nomeFuncionario = stdin.readLineSync();
    if (nomeFuncionario == null || nomeFuncionario.isEmpty) {
      print('Entrada nome inválida');
      continue;
    }

    stdout.write('Cargo Ocupado: ');
    cargoFuncionario = stdin.readLineSync();
    if (cargoFuncionario == null || cargoFuncionario.isEmpty) {
      print('Entrada cargo inválida');
      continue;
    }

    stdout.write('Salário funcionário: ');
    var entradaSalario = stdin.readLineSync();
    if (entradaSalario != null && entradaSalario.isNotEmpty) {
      salarioFuncionario = double.tryParse(entradaSalario);
    }
    if (salarioFuncionario == null) {
      print('Entrada salario inválida');
      continue;
    }

    print('-' * 70);

    exibirCadastro(
      funcionario: nomeFuncionario,
      cargo: cargoFuncionario,
      salario: salarioFuncionario,
    );

    while (true) {
      stdout.write('Deseja cadastrar outro funcionário? (s/n): ');
      String? resposta = stdin.readLineSync();
      if (resposta == null) continue;

      resposta = resposta.toLowerCase();
      if (resposta == 's') {
        break;
      } else if (resposta == 'n') {
        print('Fim do programa!');
        return;
      } else {
        print('Resposta inválida! Digite "s" para sim ou "n" para não');
      }
    }
  }
}

void exibirCadastro({
  required String funcionario,
  required String cargo,
  required double salario,
}) {
  print('=' * 70);
  print('Nome do Funcionário: $funcionario');
  print('Cargo: $cargo');
  print('Salário: $salario');
  print('=' * 70);
}
