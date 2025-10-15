// Faça um programa que leia três valores inteiros e diferentes e mostre-os em ordem decrescente. 
import 'dart:io';

void main() {
  stdout.write("Digite o valor de A: ");
  int a = int.parse(stdin.readLineSync()!);
  stdout.write("Digite o valor de B: ");
  int b = int.parse(stdin.readLineSync()!);
  stdout.write("Digite o valor de C: ");
  int c = int.parse(stdin.readLineSync()!);
  
  if (a == b || a == c || b == c){
      print("Números repetidos");
      return;
  }
  if (a > b && b > c){
      int maior = a;
      int meio = b;
      int menor = c;
      print("Maior: $maior");
      print("Meio: $meio");
      print("Menor: $menor");
  } else if (b > a && b > c){
      int maior = b;
      int meio = a;
      int menor = c;
      print("Maior: $maior");
      print("Meio: $meio");
      print("Menor: $menor");
  } else{
      int maior = c;
      int meio = b;
      int menor = a;
      print("Maior: $maior");
      print("Meio: $meio");
      print("Menor: $menor");
  }
  
}