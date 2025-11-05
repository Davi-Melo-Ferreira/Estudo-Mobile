import 'dart:io';

void main() {
  List<Map<String, dynamic>> tarefas = [];
  Map<String, dynamic> tarefa = {};
  int? opcao;
  bool verify = true;
  int? tamanhoAntes;

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
    if (opcao != null) {
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

          stdout.write('Digite o nome da Tarefa que deseja Editar: ');
          String? input = stdin.readLineSync();
          input = input != null && input.isNotEmpty ? input : null;

          if (input != null) {
            verify = false;
            for (var mapa in tarefas) {
              if (mapa['titulo'] == input) {
                verify = true;
                continue;
              }
            }
            if (!verify) {
              print('Nome não encontrado!');
              break;
            }
            print("-" * 30);
            print(
              '1. Nome\n'
              '2. Descrição\n',
            );
            print("-" * 30);

            stdout.write(
              'Digite o número correspondente ao que deseja editar: ',
            );
            String? inputEdit = stdin.readLineSync();
            inputEdit = inputEdit != null && inputEdit.isNotEmpty
                ? inputEdit
                : null;

            if (inputEdit != null) {
              switch (inputEdit) {
                case '1':
                  stdout.write('Digite o novo Valor a ser Inserido: ');
                  String? inputNovo = stdin.readLineSync();
                  inputNovo = inputNovo != null && inputNovo.isNotEmpty
                      ? inputNovo
                      : null;

                  if (inputNovo != null) {
                    verify = false;
                    for (var mapa in tarefas) {
                      if (mapa['titulo'] == input) {
                        mapa.update('titulo', (valorNovo) => inputNovo);
                        verify = true;
                      }
                    }
                    if (!verify) print('Nome não encontrado!');
                  } else {
                    print('Valor nulo Inválido!');
                  }
                case '2':
                  stdout.write('Digite o novo Valor a ser Inserido: ');
                  String? inputNovo = stdin.readLineSync();
                  inputNovo = inputNovo != null && inputNovo.isNotEmpty
                      ? inputNovo
                      : null;

                  if (inputNovo != null) {
                    verify = false;
                    for (var mapa in tarefas) {
                      if (mapa['titulo'] == input) {
                        mapa.update('descricao', (valorNovo) => inputNovo);
                        verify = true;
                      }
                    }
                    if (!verify) print('Nome não encontrado!');
                  } else {
                    print('Valor nulo Inválido!');
                  }
                default:
                  print('Valor inválido!');
              }
            }
          } else {
            print('Valor nulo Inválido!');
          }

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
          stdout.write('Digite o nome da Tarefa que deseja Remover: ');
          String? input = stdin.readLineSync();
          input = input != null && input.isNotEmpty ? input : null;

          if (input != null) {
            tamanhoAntes = tarefas.length;
            tarefas.removeWhere((mapa) => mapa["titulo"] == input);
            bool removeu = tarefas.length < tamanhoAntes;

            if (removeu) {
              print('\nTarefa Removida!');
            } else {
              print('Tarefa não encontrada!');
            }
          } else {
            print('Valor nulo Inválido!');
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
            'Digite o nome da Tarefa que deseja marcar como Concluída: ',
          );
          String? inputNome = stdin.readLineSync();
          inputNome = inputNome != null && inputNome.isNotEmpty
              ? inputNome
              : null;

          if (inputNome != null) {
            verify = false;
            for (var mapa in tarefas) {
              if (mapa['titulo'] == inputNome) {
                mapa.update('concluida', (valor) => 'concluída');
                print('\nTarefa Concluída!');
                verify = true;
              }
            }
            if (!verify) print('Nome não encontrado!');
          } else {
            print('Valor nulo Inválido!');
          }

        // Termina o código
        case 6:
          int concluidas = 0;
          int pendentes = 0;
          print('-' * 30);
          for (var mapa in tarefas) {
            if (mapa['concluida'] == 'concluída') {
              concluidas++;
            } else {
              pendentes++;
            }
          }
          print('Tarefas Pendentes: ${pendentes}\n');
          print('Tarefas Concluidas: ${concluidas}');
          print('-' * 30);
          return;

        default:
          print('Valor inválido!');
      }
    } else {
      print('Valor inválido!');
    }
  }
}
