void main(){
  String? nome;

  // String saudacao = "Olá";

  print('Exemplo 1: Variável nula');
  print(nome);

  print('\nExemplo 2: Atribuindo valor à variável nula');
  nome = "Maria";
  print(nome);

  print('\nExemplo 3: Acessando valor com !');
  String texto = nome;
  print('Texto com nome: $texto');

  print('\nExemplo 4: Tentando usar variável não inicializada');
  String? mensagem;

  try{
    String novaMensagem = mensagem!;
    print(novaMensagem);
  } catch (e){
    print('Erro: você tentou usar uma variável nula com !');
    print('Detalhes: $e');
  }
}