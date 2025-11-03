// 3. Cálculo de Média Ponderada Após Descarte
// Considere uma lista de notas de alunos.
// O exercício exige que se descarte a menor nota da lista e,
// em seguida, calcule a média aritmética das notas restantes.
// O resultado deve ser um número decimal (double).
import 'dart:io';

void main(){
    List<int> listaInteiros = [];
    double soma = 0;
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
      print("Lista Original: $listaInteiros");
      listaInteiros.sort();
      print("Lista Ordenada: $listaInteiros");
      listaInteiros.removeAt(0);
      print("Lista Sem o Menor Número: $listaInteiros");
      
      for (int i in listaInteiros){
        soma += i;
      }

      soma = soma / listaInteiros.length;
      print('Média das Notas: $soma');
    
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