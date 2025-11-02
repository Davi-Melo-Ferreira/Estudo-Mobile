// 4. Multiplicação de Elementos Ímpares
// Percorra uma lista de números inteiros.
// Para cada número, verifique se ele é ímpar.
// Se for ímpar, ele deve ser multiplicado por 2.
// Se for par, ele deve permanecer inalterado.
// O resultado final deve ser uma nova lista com os valores transformados.
import 'dart:io';

void main(){
  while (true){
    List<int> listaInt = [6, 5, 3, 4, 8, 7];
    List<int> novaLista = [];
    
    for (int i = 0; i < listaInt.length; i++) {
        int numero = listaInt[i];
        print(numero);
    
        if (numero % 2 != 0) {
          // se for ímpar, multiplica por 2
          novaLista.add(numero * 2);
          print(novaLista);
        } else {
          // se for par, mantém igual
          novaLista.add(numero);
        }
    }

    print('Lista original: $listaInt');
    print('Lista transformada: $novaLista');
      
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