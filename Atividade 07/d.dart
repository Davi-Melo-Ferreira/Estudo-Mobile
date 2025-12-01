// d. Faça um programa que receba e divida 2 números. A saída da divisão
// precisará ser formatada com 4 casas decimais.
//
// Implementação orientada a classes: a classe `DivisaoFormatada` encapsula
// dois números e provê um método que retorna a string da divisão com 4
// casas decimais. Se o divisor for zero, o método lança uma exceção.

class DivisaoFormatada {
  final double numerador;
  final double denominador;

  DivisaoFormatada(this.numerador, this.denominador);

  // Realiza a divisão e formata o resultado com 4 casas decimais.
  String dividirCom4Casas() {
    if (denominador == 0) throw ArgumentError('Divisão por zero');
    final resultado = numerador / denominador;
    return resultado.toStringAsFixed(4);
  }
}

// Exemplo de uso: imprime a divisão formatada.
void main() {
  final div = DivisaoFormatada(10, 3);
  print('Resultado formatado (4 casas): ${div.dividirCom4Casas()}');
}
