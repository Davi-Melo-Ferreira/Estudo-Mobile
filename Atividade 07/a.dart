// a. Faça um programa que peça 2 valores. Calcule e imprima a soma, o produto,
// a subtração, a divisão, o resto da divisão e a divisão inteira.
//
// Implementação orientada a classes: definimos a classe `OperacoesAB` que
// encapsula dois números e fornece métodos para cada operação pedida. Ao final
// há uma função `main` com exemplo de uso.

class OperacoesAB {
  // Campos que guardam os dois valores fornecidos ao criar a instância.
  final double a;
  final double b;

  // Construtor: inicializa os campos `a` e `b`.
  OperacoesAB(this.a, this.b);

  // Retorna a soma de `a` e `b`.
  double soma() => a + b;

  // Retorna o produto de `a` e `b`.
  double produto() => a * b;

  // Retorna a subtração `a - b`.
  double subtracao() => a - b;

  // Retorna a divisão `a / b`. Se `b` for zero, lança uma exceção.
  double divisao() {
    if (b == 0) throw ArgumentError('Divisão por zero');
    return a / b;
  }

  // Retorna o resto da divisão inteira `a % b`.
  double restoDivisao() {
    if (b == 0) throw ArgumentError('Divisão por zero');
    return a % b;
  }

  // Retorna a divisão inteira (parte inteira de a / b) como int.
  int divisaoInteira() {
    if (b == 0) throw ArgumentError('Divisão por zero');
    return (a ~/ b).toInt();
  }
}

// Exemplo de uso: cria uma instância e imprime cada resultado formatado.
void main() {
  final op = OperacoesAB(15, 4); // exemplo: a = 15, b = 4

  print('Soma: ${op.soma()}');
  print('Produto: ${op.produto()}');
  print('Subtração: ${op.subtracao()}');
  print('Divisão: ${op.divisao()}');
  print('Resto da divisão: ${op.restoDivisao()}');
  print('Divisão inteira: ${op.divisaoInteira()}');
}
