// Cálculo de velocidade média:
// Faça um programa que receba as distâncias percorridas
// a cada intervalo de tempo e calcule a velocidade média total do percurso.
import 'dart:io';

void main() {
  String? opcao;
  double? distancia;
  double? tempo;

  while (opcao != 'n') {

    stdout.write('\nDigite a distância percorrida (em km): ');
    String? inputD = stdin.readLineSync();
    distancia = (inputD != null) ? double.tryParse(inputD) : null;
    if (distancia == null || distancia <= 0) {
      print('Valor inválido! Somente números maiores que 0');
      continue;
    }

    stdout.write('Digite o tempo gasto (em horas): ');
    String? inputT = stdin.readLineSync();
    tempo = (inputT != null) ? double.tryParse(inputT) : null;
    if (tempo == null || tempo <= 0) {
      print('Valor inválido! Somente números maiores que 0');
      continue;
    }

    double velocidadeMedia = distancia / tempo;
    print('A velocidade média é de ${velocidadeMedia.toStringAsFixed(2)} km/h');
    

    while (true){
      stdout.write('Deseja continuar?(s/n): ');
      String? inputOpcao = stdin.readLineSync();

      if (inputOpcao != null) {
        if (inputOpcao != 's' && inputOpcao != 'n') {
          print('Valor inválido');
        } else {
          opcao = inputOpcao;
          break;
        }
      }
    }
  }
}