import 'dart:io';

class Compromisso {
  String titulo;
  String data;
  String hora;
  String descricao;

  Compromisso({
    required this.titulo,
    required this.data,
    required this.hora,
    required this.descricao,
  });

  @override
  String toString() {
    return '\nTítulo: $titulo | Data: $data | Hora: $hora | Descrição: $descricao';
  }
}

class Agenda {
  List<Compromisso> compromissos = [];

  void adicionarCompromisso(Compromisso compromisso) {
    compromissos.add(compromisso);
    print('\nCompromisso adicionado com sucesso!');
  }

  void listarCompromissos() {
    if (compromissos.isEmpty) {
      print('\nNenhum compromisso cadastrado.\n');
    } else {
      print('\n--- Lista de Compromissos ---');
      for (int i = 0; i < compromissos.length; i++) {
        print('${i + 1}. ${compromissos[i]}');
      }
    }
  }
}

String lerEntrada(String mensagem) {
  String? entrada;
  do {
    stdout.write(mensagem);
    entrada = stdin.readLineSync();
  } while (entrada == null || entrada.isEmpty);
  return entrada.trim();
}

String lerData() {
  String data;
  RegExp exp = RegExp(r'^\d{2}/\d{2}/\d{4}$');
  do {
    data = lerEntrada('Digite a data (DD/MM/YYYY): ');
    if (!exp.hasMatch(data)) {
      print('Formato inválido! use DD/MM/YYYY. Exemplo: 15/05/2025');
    }
  } while (!exp.hasMatch(data));
  return data;
}

String lerHora() {
  String hora;
  RegExp exp = RegExp(r'^\d{2}:\d{2}$');
  do {
    hora = lerEntrada('Digite a hora (HH:MM): ');
    if (!exp.hasMatch(hora)) {
      print('Formato inválido! use HH:MM. Exemplo: 14:30');
    }
  } while (!exp.hasMatch(hora));
  return hora;
}

void main() {
  Agenda agenda = Agenda();
  int opcao = 0;
  do{
    print('\n===== MENU AGENDA =====');
    print('1. Adicionar Compromisso');
    print('2. Listar Compromissos');
    print('3. Sair');
    stdout.write('Escolha uma opção: ');
    String? entrada = stdin.readLineSync();
    opcao = int.tryParse(entrada ?? '') ?? 0;

    switch (opcao) {
      case 1:
        print("\n--- NOVO COMPROMISSO ---");
        String titulo = lerEntrada('Título: ');
        String data = lerData();
        String hora = lerHora();
        String descricao = lerEntrada('Descrição: ');

        Compromisso novo = Compromisso(
          titulo: titulo,
          data: data,
          hora: hora,
          descricao: descricao,
        );

        agenda.adicionarCompromisso(novo);
        break;

      case 2:
        agenda.listarCompromissos();
        break;

      case 3:
        print('\nEncerrando o programa...');
        break;

      default:
        print('Opção inválida! Tente novamente.');
    }
  } while (opcao != 3);
}
