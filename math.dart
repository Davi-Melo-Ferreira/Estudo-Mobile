import 'dart:math';

void main() {
  double x = 25;
  double y = 3;

  print('-' * 70);
  double raiz = sqrt(x);
  print('A raiz quadrada de $x = $raiz');

  double potencia = pow(x, y).toDouble();
  print('$x elevado a $y = $potencia');

  print('O maior valor entre $x e $y = ${max(x, y)}');
  print('O menor valor entre $x e $y = ${min(x, y)}');

  double negativo = -15.7;
  print('O valor absoluto de $negativo = ${negativo.abs()}');

  double angulo = pi / 4;
  print('O seno de $angulo = ${sin(angulo)}');
  print('O cosseno de $angulo = ${cos(angulo)}');

  Random random = Random();

  int aleatorio = random.nextInt(100);
  print('Número aleatório entre 0 e 99 = $aleatorio');
  print("-" * 70);
}