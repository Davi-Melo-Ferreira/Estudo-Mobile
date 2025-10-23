// Tabela de velocidades: Faça um programa que leia o tempo (em segundos)
// e a aceleração constante de um objeto e imprima sua velocidade
// a cada segundo até o tempo informado.
import 'dart:io';

void main() {
  String? inputOpcao;
  int? tempo;
  int? velocidade;

  while (inputOpcao != 'n') {
    stdout.write('Digite um tempo em minutos: ');
    String? inputTempo = stdin.readLineSync();
    tempo = (inputTempo != null) ? int.tryParse(inputTempo) : null;
    if (tempo == null) {
      print("Valor inválido");
      continue;
    }
    tempo = tempo * 60;

    stdout.write('Digite uma velocidade constante: ');
    String? inputVelocidade = stdin.readLineSync();
    velocidade = (inputVelocidade != null)
        ? int.tryParse(inputVelocidade)
        : null;
    if (velocidade == null) {
      print("Valor inválido");
      continue;
    }

    int resultadoAceleracao = 0;
    for (int i = 0; i <= tempo; i++) {
      resultadoAceleracao += velocidade;
      print("Tempo: ${i}s | Velocidade: ${resultadoAceleracao}");
    }

    while (true) {
      stdout.write("Deseja continuar?(s/n): ");
      inputOpcao = stdin.readLineSync();
      if (inputOpcao != null) {
        if (inputOpcao != 's' && inputOpcao != 'n') {
          print('Valor inválido!');
        } else {
          break;
        }
      }
    }
  }
}
