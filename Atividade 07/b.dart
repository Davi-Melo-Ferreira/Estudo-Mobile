// b. Faça um programa que peça um ano qualquer. O programa deverá calcular e
// imprimir a idade.
//
// Implementação orientada a classes: definimos a classe `CalculadoraIdade`
// que recebe o ano de nascimento e fornece um método para calcular a idade
// com base no ano atual (por padrão usa o ano do sistema).

class CalculadoraIdade {
  // Ano de nascimento fornecido ao criar a instância.
  final int anoNascimento;

  // Construtor simples que inicializa o ano de nascimento.
  CalculadoraIdade(this.anoNascimento);

  // Calcula a idade a partir do ano atual. Se `anoAtual` não for informado,
  // usa `DateTime.now().year`.
  int calcularIdade([int? anoAtual]) {
    final atual = anoAtual ?? DateTime.now().year;
    return atual - anoNascimento;
  }
}

// Exemplo de uso com `main`.
void main() {
  final calc = CalculadoraIdade(1995);
  print('Ano de nascimento: ${calc.anoNascimento}');
  print('Idade: ${calc.calcularIdade()}');
}
