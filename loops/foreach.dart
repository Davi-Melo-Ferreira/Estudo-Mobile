void main(){
  List<String> panteras76 = [
    'Kelly Garrett',
    'Jill Munroe',
    'Sabrina Duncan'
  ];

  panteras76.forEach((atriz) {
    print(atriz);
  });
}

/**
 * Neste exemplo, o método forEach é chamado na lista
 * panteras76. A função anônima (lambda) passada como
 * argumento para o forEach recebe um parâmetro atriz,
 * que representa cada elemento da lista durante a
 * iteração. O bloco de código dentro da função anônima
 * imprime o nome de cada atriz na saída padrão.
 */