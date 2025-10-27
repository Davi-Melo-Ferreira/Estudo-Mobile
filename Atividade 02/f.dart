// Conversão de energia: Faça um programa que leia um valor em joules
// e converta para calorias (1 caloria = 4,184 joules), exibindo os resultados.
import 'dart:io';
void main() {
  String? opcao;
  double? joules;

  while(opcao != 'n'){
    stdout.write('Digite um valor em joules: ');
    String? input = stdin.readLineSync();
    joules = (input != null) ? double.tryParse(input) : null;

    if(joules == null){
      print('Valor inválido!');
      continue;
    }

    double calorias = joules / 4.184;
    print('\n${joules} joules equivalem a ${calorias.toStringAsFixed(2)} calorias.\n');

    while(true){
      stdout.write('Deseja continuar?(s/n): ');
      String? inputOpcao = stdin.readLineSync();
      if(inputOpcao != null){
        if(inputOpcao != 's' && inputOpcao != 'n'){
          print('Valor inválido!');
        } else {
          opcao = inputOpcao;
          break;
        }
      }
    }
  }
}