import 'dart:io';

listarTarefas(tarefas, verify) {
  if (tarefas.isNotEmpty) {
    print("\n--- Lista de Tarefas ---");
    for (var mapa in tarefas) {
      print(
        "Nome: ${mapa['titulo']} - Descrição: ${mapa['descricao']} - Concluída: ${mapa['concluida']}\n",
      );
    }
  } else {
    print('Lista de Tarefas está Vazia');
    return verify = false;
  }
}

entrarDados(texto) {
  stdout.write('$texto: ');
  String? inputEntrada = (stdin.readLineSync() ?? '').trim();
  if (inputEntrada == '') {
    print('Valor inválido!');
  }
  return inputEntrada;
}

void entradaEditar(opcao, verify, tarefas, input) {
  String inputNovo = '';
  if (opcao == 'concluida') {
    inputNovo = 'concluída';
  } else {
    stdout.write('Digite o novo Valor a ser Inserido: ');
    inputNovo = (stdin.readLineSync() ?? '').trim();
  }
  if (inputNovo != '') {
    verify = false;
    for (var mapa in tarefas) {
      if (mapa['titulo'] == input) {
        mapa.update('$opcao', (valorNovo) => inputNovo);
        verify = true;
        print('\nTarefa modificada com Sucesso!');
      }
    }
    if (!verify) print('Nome não encontrado!');
  } else 
    print('Valor inválido!');
}

void main() {
  List<Map<String, dynamic>> tarefas = [];
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
    var opcao = entrarDados('Digite o número que corresponde à opção desejada');
    if (opcao == '') continue;
    switch (opcao) {
      // Cria uma Tarefa
      case '1':
        while (true) {
          var inputTitle = entrarDados('Digite o nome da Tarefa que deseja');

          if (inputTitle == '') continue;

          if (tarefas.any((t) => t['titulo'] == inputTitle)) {
            print("Já existe uma tarefa com esse título!");
            continue;
          }

          var inputDescribe = entrarDados('Digite a Descrição da Tarefa');
          if (inputDescribe == '') continue;

          tarefas.add({
            'titulo': inputTitle,
            'descricao': inputDescribe,
            'concluida': 'pendente',
          });
          break;
        }

      // Visualiza Todas as Tarefas
      case '2':
        var verificar = listarTarefas(tarefas, verify);
        if (verificar == false) break;

      // Edita uma Tarefa
      case '3':
        var verificar = listarTarefas(tarefas, verify);
        if (verificar == false) break;

        var input = entrarDados('Digite o nome da Tarefa que deseja Editar');
        if (input == '') break;

        try{
          tarefas.firstWhere((t) => t['titulo'] == input);
        } catch(StateError){
          print('Nome não encontrado!');
          break;
        }

        print("-" * 30);
        print(
          '1. Nome\n'
          '2. Descrição\n',
        );
        print("-" * 30);

        var inputEdit = entrarDados(
          'Digite o número que corresponde à opção desejada',
        );
        if (inputEdit == '') break;
        switch (inputEdit) {
          case '1':
            entradaEditar('titulo', verify, tarefas, input);
          case '2':
            entradaEditar('descricao', verify, tarefas, input);
          default:
            print('Valor inválido!');
        }

      // Remove uma Tarefa
      case '4':
        var verificar = listarTarefas(tarefas, verify);
        if (verificar == false) break;
        var input = entrarDados('Digite o nome da Tarefa que deseja Remover');
        if (input == '') continue;

        tamanhoAntes = tarefas.length;
        tarefas.removeWhere((mapa) => mapa["titulo"] == input);
        bool removeu = tarefas.length < tamanhoAntes;

        if (removeu) {
          print('\nTarefa Removida!');
        } else {
          print('Tarefa não encontrada!');
        }

      // Marca como Concluída uma Tarefa
      case '5':
        var verificar = listarTarefas(tarefas, verify);
        if (verificar == false) break;

        var inputNome = entrarDados(
          'Digite o nome da Tarefa que deseja Concluir',
        );

        entradaEditar('concluida', verify, tarefas, inputNome);

      // Termina o código
      case '6':
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
  }
}