// Cálculo de velocidade média:
// Faça um programa que receba as distâncias percorridas
// a cada intervalo de tempo e calcule a velocidade média total do percurso.
import 'dart:io';

void main() {
  String? opcao;

  while (opcao != 'n') {

    

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
