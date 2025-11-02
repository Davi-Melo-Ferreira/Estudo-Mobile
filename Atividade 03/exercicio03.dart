// 3. Cálculo de Média Ponderada Após Descarte
// Considere uma lista de notas de alunos.
// O exercício exige que se descarte a menor nota da lista e,
// em seguida, calcule a média aritmética das notas restantes.
// O resultado deve ser um número decimal (double).
import 'dart:io';

void main(){
    List<int> listaInt = [6, 5, 3, 4, 8, 7];
    double soma = 0;
  while (true){
      
      print("Lista Original: $listaInt");
      listaInt.sort();
      print("Lista Ordenada: $listaInt");
      listaInt.removeAt(0);
      print("Lista Sem o Menor Número: $listaInt");
      
      for (int i in listaInt){
        soma += i;
      }

      soma = soma / listaInt.length;
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