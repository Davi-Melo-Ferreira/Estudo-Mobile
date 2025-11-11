import 'dart:io';

void main() {
  List<Map<String, dynamic>> tarefas = [];

  while (true) {
    print("\n${'-' * 30}");
    print("""
1. Criar Tarefa
2. Listar Tarefas
3. Editar Tarefa
4. Remover Tarefa
5. Concluir Tarefa
6. Sair
""");
    print("${'-' * 30}");

    String? opcao = _entrada("Escolha uma opção");
    switch (opcao) {
      case '1':
        _criarTarefa(tarefas);
        break;
      case '2':
        _listarTarefas(tarefas);
        break;
      case '3':
        _editarTarefa(tarefas);
        break;
      case '4':
        _removerTarefa(tarefas);
        break;
      case '5':
        _concluirTarefa(tarefas);
        break;
      case '6':
        _resumoFinal(tarefas);
        return;
      default:
        print("Opção inválida!");
    }
  }
}

// ------------------- FUNÇÕES PRINCIPAIS -------------------

void _criarTarefa(List<Map<String, dynamic>> tarefas) {
  String titulo = _entrada("Digite o título da tarefa");
  if (titulo.isEmpty) return print("Título inválido!");

  if (tarefas.any((t) => t['titulo'] == titulo)) {
    print("Já existe uma tarefa com esse título!");
    return;
  }

  String descricao = _entrada("Digite a descrição da tarefa");
  if (descricao.isEmpty) return print("Descrição inválida!");

  tarefas.add({
    'titulo': titulo,
    'descricao': descricao,
    'concluida': false,
  });

  print("Tarefa adicionada com sucesso!");
}

void _listarTarefas(List<Map<String, dynamic>> tarefas) {
  if (tarefas.isEmpty) {
    print("Nenhuma tarefa cadastrada.");
    return;
  }

  print("\n--- Lista de Tarefas ---");
  for (var t in tarefas) {
    print(
        "Título: ${t['titulo']} | Descrição: ${t['descricao']} | Status: ${t['concluida'] ? 'Concluída' : 'Pendente'}");
  }
}

void _editarTarefa(List<Map<String, dynamic>> tarefas) {
  if (tarefas.isEmpty) return print("Nenhuma tarefa para editar.");

  _listarTarefas(tarefas);
  String titulo = _entrada("Digite o título da tarefa que deseja editar");

  var tarefa = tarefas.firstWhere(
    (t) => t['titulo'] == titulo,
    orElse: () => {},
  );

  if (tarefa.isEmpty) return print("Tarefa não encontrada.");

  print("""
1. Editar Título
2. Editar Descrição
""");

  String opcao = _entrada("Escolha o campo a editar");

  switch (opcao) {
    case '1':
      tarefa['titulo'] = _entrada("Novo título");
      break;
    case '2':
      tarefa['descricao'] = _entrada("Nova descrição");
      break;
    default:
      print("Opção inválida!");
      return;
  }

  print("Tarefa atualizada com sucesso!");
}

void _removerTarefa(List<Map<String, dynamic>> tarefas) {
  if (tarefas.isEmpty) {
    print("Nenhuma tarefa para remover.");
    return;
  }

  _listarTarefas(tarefas);

  String titulo = _entrada("Digite o título da tarefa que deseja remover");

  // Armazena o tamanho anterior para comparar depois
  int tamanhoAntes = tarefas.length;

  tarefas.removeWhere((t) => (t['titulo'] as String?)?.toLowerCase() == titulo.toLowerCase());

  bool removido = tarefas.length < tamanhoAntes;

  print(removido ? "Tarefa removida com sucesso!" : "Tarefa não encontrada.");
}

void _concluirTarefa(List<Map<String, dynamic>> tarefas) {
  if (tarefas.isEmpty) return print("Nenhuma tarefa para concluir.");

  _listarTarefas(tarefas);
  String titulo = _entrada("Digite o título da tarefa que deseja concluir");

  var tarefa = tarefas.firstWhere(
    (t) => t['titulo'] == titulo,
    orElse: () => {},
  );

  if (tarefa.isEmpty) return print("Tarefa não encontrada.");

  tarefa['concluida'] = true;
  print("Tarefa marcada como concluída!");
}

void _resumoFinal(List<Map<String, dynamic>> tarefas) {
  int concluidas = tarefas.where((t) => t['concluida']).length;
  int pendentes = tarefas.length - concluidas;

  print("\n--- Resumo ---");
  print("Tarefas Concluídas: $concluidas");
  print("Tarefas Pendentes: $pendentes");
  print("-----------------------------");
}

// ------------------- FUNÇÕES AUXILIARES -------------------

String _entrada(String texto) {
  stdout.write("$texto: ");
  return (stdin.readLineSync() ?? "").trim();
}