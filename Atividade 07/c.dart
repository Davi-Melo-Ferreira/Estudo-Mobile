// c. Faça um programa que peça 4 notas com entrada de dados. O programa
// deverá calcular a média das notas digitadas.
//
// Implementação orientada a classes: a classe `MediaNotas` recebe quatro
// notas (double) e expõe um método `calcularMedia` que devolve a média aritmética.

class MediaNotas {
  // Notas armazenadas em campos imutáveis.
  final double n1;
  final double n2;
  final double n3;
  final double n4;

  // Construtor que inicializa as quatro notas.
  MediaNotas(this.n1, this.n2, this.n3, this.n4);

  // Calcula a média aritmética simples das quatro notas.
  double calcularMedia() => (n1 + n2 + n3 + n4) / 4.0;
}

// Exemplo de uso: cria uma instância com quatro notas e imprime a média.
void main() {
  final notas = MediaNotas(7.5, 8.0, 6.0, 9.0);
  print('Notas: ${notas.n1}, ${notas.n2}, ${notas.n3}, ${notas.n4}');
  print('Média: ${notas.calcularMedia()}');
}
