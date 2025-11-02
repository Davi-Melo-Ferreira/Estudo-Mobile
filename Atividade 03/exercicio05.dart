// 5. Determinação do Segundo Valor de Pico
// Dada uma lista de números inteiros,
// encontre e imprima o segundo maior valor presente na lista.
// A lista pode conter duplicatas, mas o segundo maior valor
// deve ser o valor distinto que é imediatamente menor que o maior valor.
import 'dart:io';

void main(){
    while (true){
        List<int> listaInt = [6, 5, 3, 4, 8, 7];
        int indc = listaInt.length - 2;
        
        if (listaInt.length < 2) {
            print('Não há segundo valor distinto.');
        }
        listaInt.sort();
        print('Segundo Maior Número: ${listaInt[indc]}');
        
        // saída do loop
        while (true){
          stdout.write('Deseja ver de novo?(s/n): ');
          String? input = stdin.readLineSync();
          input = (input != null && input.isNotEmpty) ? input : null;
          
          if (input != null){
              if (input == 's'){
                  break;
              } else if (input == 'n'){
                  return;
              } else{
                  print('Valor inválido!');
              }
          } else{
              print('Valor nulo não permitido!');
          }
        }
    }
}