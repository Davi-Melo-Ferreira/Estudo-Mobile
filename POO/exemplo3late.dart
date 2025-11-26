class Conta {
  late String titular;
  late double saldo;

  Conta(String titular, double saldoInicial) {
    this.titular = titular;
    this.saldo = saldoInicial;
  }

  void depositar(double valor) {
    saldo += valor;
    print('Depósito de R\$ $valor realizado. Novo saldo: R\$ $saldo');
    print('-' * 70);
  }

  void sacar(double valor) {
    if (saldo >= valor) {
      saldo -= valor;
      print('Saque de R\$ $valor realizado. Novo saldo: R\$ $saldo');
    } else {
      print('Saldo insuficiente. Operação não realizada.');
    }
    print('-' * 70);
  }

  void exibirSaldo() {
    print('Saldo atual: $saldo');
    print('-' * 70);
  }
}

void main () {
  Conta conta = Conta('John', 1000.0);

  conta.exibirSaldo();

  conta.depositar(500.0);

  conta.sacar(200.0);

  conta.exibirSaldo();
}