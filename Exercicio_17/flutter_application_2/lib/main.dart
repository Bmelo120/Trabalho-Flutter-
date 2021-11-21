import 'package:flutter/material.dart';

void main() => runApp(MeuAplicativo());

class MeuAplicativo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PrimeiraRota(),
      routes: {
        SegundaRota.caminhoDaRota: (context) => SegundaRota(),
        TerceiraRota.caminhoDaRota: (context) => TerceiraRota(),
      },
    );
  }
}

class PrimeiraRota extends StatefulWidget {
  PrimeiraRotaState createState() {
    return PrimeiraRotaState();
  }
}

class PrimeiraRotaState extends State<PrimeiraRota> {
  TextEditingController valorEmRealController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Valor em Real'),
      ),
      body: Column(children: [
        Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              controller: valorEmRealController,
              decoration: InputDecoration(
                  suffixIcon: IconButton(
                      icon: Icon(Icons.clear),
                      onPressed: () => valorEmRealController.clear()),
                  labelText: "Informe o Valor em real",
                  border: OutlineInputBorder()),
            )),
        Container(
          margin: EdgeInsets.all(10),
          child: ElevatedButton(
            child: Padding(
              padding: EdgeInsets.fromLTRB(5, 7, 0, 7),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text('Próximo'),
                  Icon(
                    Icons.navigate_next,
                  )
                ],
              ),
            ),
            onPressed: () {
              Navigator.pushNamed(
                context,
                SegundaRota.caminhoDaRota,
                arguments: ArgumentosDaRota(
                    0, double.parse(valorEmRealController.text)),
              );
            },
          ),
        ),
      ]),
    );
  }
}

// ignore: must_be_immutable
class SegundaRota extends StatelessWidget {
  TextEditingController valorCotacaoController = TextEditingController();
  static const caminhoDaRota = '/SegundaRota';
  @override
  Widget build(BuildContext context) {
    ArgumentosDaRota argumentos =
        ModalRoute.of(context)!.settings.arguments as ArgumentosDaRota;
    double real = argumentos.real;
    return Scaffold(
      appBar: AppBar(
        title: Text('Cotação'),
      ),
      body: Column(children: [
        Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              controller: valorCotacaoController,
              decoration: InputDecoration(
                  suffixIcon: IconButton(
                      icon: Icon(Icons.clear),
                      onPressed: () => valorCotacaoController.clear()),
                  labelText: "Informe a cotação do Dolar",
                  border: OutlineInputBorder()),
            )),
        Container(
          margin: EdgeInsets.all(10),
          child: ElevatedButton(
            child: Padding(
              padding: EdgeInsets.fromLTRB(5, 7, 0, 7),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text('Próximo'),
                  Icon(
                    Icons.navigate_next,
                  )
                ],
              ),
            ),
            onPressed: () {
              Navigator.pushNamed(
                context,
                TerceiraRota.caminhoDaRota,
                arguments: ArgumentosDaRota(
                    double.parse(valorCotacaoController.text), real),
              );
            },
          ),
        ),
      ]),
    );
  }
}

class TerceiraRota extends StatelessWidget {
  static const caminhoDaRota = '/TerceiraRota';
  @override
  Widget build(BuildContext context) {
    ArgumentosDaRota argumentos =
        ModalRoute.of(context)!.settings.arguments as ArgumentosDaRota;
    return Scaffold(
      appBar: AppBar(
        title: Text('Resultado'),
      ),
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          "R\$:" +
              argumentos.real.toStringAsFixed(2) +
              " = US\$" +
              (argumentos.real / argumentos.cotacao).toStringAsFixed(2),
          style: TextStyle(
            fontSize: 20,
            color: Colors.yellow,
          ),
        ),
      ])),
    );
  }
}

class ArgumentosDaRota {
  double real;
  double cotacao;
  ArgumentosDaRota(
    this.cotacao,
    this.real,
  );
}
