// Faça um programa que peça 2 valores. Calcule e imprima  a soma,
// o produto, a subtração, a divisão, o resto da divisão e a divisão inteira.

// tryParse retorna null caso o número não seja o que ele espera que seja
// Parse da erro caso não retorne o que deseja
void main(){
    stdout.write('Entre com o valor de A: ');
    // ! no final pra declarar que a variável não pode receber nulo
    int a = int.parse(stdin.readLineSync()!);
    stdout.write('Entre com o valor de B: ');
    int b = int.parse(stdin.readLineSync()!);
    
    print('Soma $a + $b = ${a + b}');
    print('Produto $a * $b = ${a * b}');
    print('Subtração $a - $b = ${a - b}');
    print('Divisão $a / $b = ${a / b}');
    print('Resto $a % $b = ${a % b}');
    print('Divisão inteira $a ~/ $b = ${a ~/ b}');
}