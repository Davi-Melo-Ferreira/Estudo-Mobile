// 19. Análise Estatística Básica em Lista Numérica
// Dada uma lista de números inteiros,
// calcule o desvio padrão amostral de forma simplificada.
// O processo envolve:
// 1) calcular a média;
// 2) calcular a diferença entre cada número e a média,
// elevando ao quadrado;
// 3) somar os resultados;
// 4) dividir pela contagem de elementos menos 1;
// 5) tirar a raiz quadrada do resultado.

import 'dart:io';
import 'dart:math';
void main() {
    List<int> listaPrincipal = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
    List<double> listaQuadrados = [];
    double media = 0;
    double raizAmostral = 0;
    
  while (true) {
    if (listaPrincipal.length > 2){
      media = listaPrincipal.reduce((a, b) => a + b) / listaPrincipal.length;
      
      for (int i in listaPrincipal){
          double quadrado = pow(i - media, 2).toDouble();
          listaQuadrados.add(quadrado);
      }
      
      double somaQuadrados = listaQuadrados.reduce((a, b) => a + b);
      double varianciaAmostral = somaQuadrados / (listaPrincipal.length - 1);
      raizAmostral = sqrt(varianciaAmostral);
          
    } else{
        print('é necessário mais de 2 itens para fazer o cálculo');
    }

    print('\nResultado Final:');
    print('----------------------------------');
    print('Lista: $listaPrincipal');
    print('Média: $media');
    print('Desvio padrão amostral: $raizAmostral');
    

    while (true) {
      stdout.write('Deseja Recomeçar? (s/n): ');
      String? resposta = stdin.readLineSync();
      // tratamento de null safety
      resposta = (resposta != null && resposta.isNotEmpty) ? resposta : null;

      if (resposta != null) {
        if (resposta == 's') {
          break;
        } else if (resposta == 'n') {
          return;
        } else {
          print('Valor inválido!');
        }
      } else {
        print('Valor nulo não é permitido!');
        continue;
      }
    }
  }
}