// Definição da classe Pessoa
class Pessoa {
  // Declaração do atributo nome e idade
  final String nome;

  final int idade;

  // Construtor da classe Pessoa
  Pessoa({
    // Parâmetros obrigatórios, garante inicialização segura
    required this.nome,
    required this.idade,
    });

  // Método para exibir os dados da pessoa
  void exibirDados() {
    print("-" * 70);
    print('Nome: $nome');
    print('Idade: $idade anos');
    print("-" * 70);
  }
}

void main() {
  // Criação de uma instância(objeto) da classe Pessoa com o construtor
  Pessoa pessoa1 = Pessoa(nome: 'John Doe', idade: 25);

  // Chamada do método para exibir os dados da pessoa
  pessoa1.exibirDados();

  // Outra instância da classe Pessoa
  Pessoa pessoa2 = Pessoa(nome: 'Jane Doe', idade: 30);

  // Chamada do método para exibir os dados da segunda pessoa 
  pessoa2.exibirDados();
}


// SEGUNDO EXEMPLO
class Animal {
  String nome;
  int idade;
  double peso;
  String raca;

  Animal(this.nome, this.idade, this.peso, this.raca);

  void exibirInformacoes() {
    print('Nome: $nome');
    print('Idade: $idade');
    print('Peso: $peso');
    print('Raça: $raca');
    print('-' * 70);
  }

  int calcularIdadeEmMeses() {
    return idade * 12;
  }
}

// void main() {
//   Animal animal = Animal("Rex", 3, 10.5, "Labrador");

//   animal.exibirInformacoes();

//   int idadeMeses = animal.calcularIdadeEmMeses();
//   print('Idade em meses: $idadeMeses');
//   print('-' * 70);
// }