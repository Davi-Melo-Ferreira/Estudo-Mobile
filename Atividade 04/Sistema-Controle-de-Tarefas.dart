import 'dart:io';

void main() {
  List<Map<String, dynamic>> tarefas = [];
  Map<String, dynamic> tarefa = {};
  int? opcao;
  bool verify = true;

  while (true) {
    print("-" * 30);
    print(
      "1. Create Task\n"
      "2. Read Task\n"
      "3. Update Task\n"
      "4. Delete Task\n"
      "5. Conclude Task\n"
      "6. Exit",
    );
    print("-" * 30);
    stdout.write('Digite uma das opções: ');
    String? input = stdin.readLineSync();
    opcao = (input != null && input.isNotEmpty) ? int.tryParse(input) : null;
    switch (opcao) {
      // Cria uma Tarefa
      case 1:
        while (true) {
          stdout.write('\nDigite o Nome da Tarefa: ');
          String? inputTitle = stdin.readLineSync();
          inputTitle = inputTitle != null && inputTitle.isNotEmpty
              ? inputTitle
              : null;

          if (inputTitle == null) {
            print('Valor inválido!');
            continue;
          }

          for (var mapa in tarefas) {
            if (mapa['titulo'] == inputTitle) {
              print('Já existe uma tarefa com esse nome.');
              verify = false;
              break;
            } else {
              verify = true;
              continue;
            }
          }
          if (!verify) {
            continue;
          }

          stdout.write('\nDescreva a Tarefa: ');
          String? inputDescribe = stdin.readLineSync();
          inputDescribe = inputDescribe != null && inputDescribe.isNotEmpty
              ? inputDescribe
              : null;

          if (inputDescribe == null) {
            print('Valor inválido!');
          }

          tarefa = {};
          tarefa.putIfAbsent('titulo', () => inputTitle);
          tarefa.putIfAbsent('descricao', () => inputDescribe);
          tarefa.putIfAbsent('concluida', () => 'pendente');
          tarefas.add(tarefa);
          break;
        }

      // Visualiza Todas as Tarefas
      case 2:
        if (tarefas.isNotEmpty) {
          for (var mapa in tarefas) {
            print(
              "Nome: ${mapa['titulo']} - Descrição: ${mapa['descricao']} - Concluída: ${mapa['concluida']}",
            );
          }
        } else {
          print('Lista de Tarefas está Vazia');
          break;
        }

      // Edita uma Tarefa
      case 3:
        if (tarefas.isNotEmpty) {
          for (var mapa in tarefas) {
            print(
              "Nome: ${mapa['titulo']} - Descrição: ${mapa['descricao']} - Concluída: ${mapa['concluida']}",
            );
          }
        } else {
          print('Lista de Tarefas está Vazia');
          break;
        }

        stdout.write('Digite o nome da tarefa que deseja editar: ');
        String? input = stdin.readLineSync();
        input = input != null && input.isNotEmpty ? input : null;

        if (input != null) {}

      // Remove uma Tarefa
      case 4:
        if (tarefas.isNotEmpty) {
          for (var mapa in tarefas) {
            print(
              "Nome: ${mapa['titulo']} - Descrição: ${mapa['descricao']} - Concluída: ${mapa['concluida']}",
            );
          }
        } else {
          print('Lista de Tarefas está Vazia');
          break;
        }
        stdout.write('Digite o nome da tarefa que deseja remover: ');
        String? input = stdin.readLineSync();
        input = input != null && input.isNotEmpty ? input : null;

        if (input != null) {
          tarefas.removeWhere((mapa) => mapa["titulo"] == input);
          print('\nTarefa Removida!');
        }

      // Marca como Concluída uma Tarefa
      case 5:
        if (tarefas.isNotEmpty) {
          for (var mapa in tarefas) {
            print(
              "Nome: ${mapa['titulo']} - Descrição: ${mapa['descricao']} - Concluída: ${mapa['concluida']}",
            );
          }
        } else {
          print('Lista de Tarefas está Vazia');
          break;
        }

        stdout.write(
          'Digite o nome da tarefa que deseja marcar como Concluída: ',
        );
        String? inputNome = stdin.readLineSync();
        inputNome = inputNome != null && inputNome.isNotEmpty
            ? inputNome
            : null;

        if (inputNome != null) {
          for (var mapa in tarefas) {
            if (mapa == inputNome) {}
          }
        }

      // Termina o código
      case 6:
        return;
    }
  }
}
