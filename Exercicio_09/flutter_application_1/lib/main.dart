import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: PaginaInicial()));
}

class PaginaInicial extends StatefulWidget {
  PaginaInicialState createState() {
    return PaginaInicialState();
  }
}

class PaginaInicialState extends State<PaginaInicial> {
  int numeroVezes = 0;
  String mensagem =
      'Numero de vezes em que o botão foi pressionado: 0. \nEsse numro é par ';

  void cliqueDoBotao() {
    numeroVezes = numeroVezes + 1;
    mensagem =
        "Numero de vezes em que o botão foi pressionado: $numeroVezes. \nEsse número é ${numeroVezes % 2 == 0 ? "par" : "impar"}";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pagina Inicial"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(mensagem),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(cliqueDoBotao);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
