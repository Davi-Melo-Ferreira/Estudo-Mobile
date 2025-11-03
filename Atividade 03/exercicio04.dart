// 4. Multiplicação de Elementos Ímpares
// Percorra uma lista de números inteiros.
// Para cada número, verifique se ele é ímpar.
// Se for ímpar, ele deve ser multiplicado por 2.
// Se for par, ele deve permanecer inalterado.
// O resultado final deve ser uma nova lista com os valores transformados.
import 'dart:io';

void main(){
  List<int> listaInteiros = [];
  List<int> novaLista = [];
  while (true){
    bool verificarInteiros = true;

    stdout.write("Digite valores inteiros de uma lista(separe com espaços): ");
    String? input = stdin.readLineSync();
    input = (input != null && input.isNotEmpty) ? input.trim() : null;

    if (input != null) {
      List<String> listaString = input.split(' ');

      for (String char in listaString) {
        int? inteiro = int.tryParse(char);

        if (inteiro != null) {
          listaInteiros.add(inteiro);
          verificarInteiros = true;
        } else {
          print('$char não é um inteiro');
          verificarInteiros = false;
          break;
        }
      }
      if (verificarInteiros == false) {
        continue;
      }
    } else {
      print('Valor nulo não é permitido!');
      continue;
    }

    // Código Aqui ↓  
    for (int i = 0; i < listaInteiros.length; i++) {
        int numero = listaInteiros[i];
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

    print('Lista original: $listaInteiros');
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