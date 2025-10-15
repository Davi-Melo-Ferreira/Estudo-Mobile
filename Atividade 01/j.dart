// Faça um programa que receba um valor em reais, depois calcule quantos euros, dólares e wons dariam para comprar com esse valor.
import 'dart:io';

void main() {
  stdout.write('Digite o valor em reais (R\$): ');
  double reais = double.parse(stdin.readLineSync()!);

  // Cotações fixas (você pode alterar conforme desejar)
  const double dolar = 5.70;
  const double euro = 6.10;
  const double won = 0.0042;

  double emDolares = reais / dolar;
  double emEuros = reais / euro;
  double emWons = reais / won;

  print('\nConvertendo R\$${reais.toStringAsFixed(2)}:');
  print('Dólar - US\$${emDolares.toStringAsFixed(2)} dólares');
  print('Euro - €${emEuros.toStringAsFixed(2)} euros');
  print('Won - ₩${emWons.toStringAsFixed(0)} wons');
}