import 'dart:io';

void main(List<String> args) {
  // 2) Escreva um programa que verifique, em uma string, a existência da letra ‘a’,
  // seja maiúscula ou minúscula, além de informar a quantidade de vezes em que ela ocorre.
  contemLetraA() {
    String value = '';
    int count = 0;
    print('Escreva uma palavra ou frase:');
    try {
      value = stdin.readLineSync()!;
    } catch (e) {
      print(e.toString());
      exit(0);
    }
    for (var i = 0; i < value.length; i++) {
      value[i] == 'a' || value[i] == 'A' ? count++ : null;
    }
    count > 0
        ? print('A letra "A" apareceu $count na frase informada')
        : print('Não contém a letra "A" na frase informada');
  }

  contemLetraA();
}
