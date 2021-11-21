import 'package:flutter/material.dart';

void main() => runApp(MeuAplicativo());

class MeuAplicativo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PrimeiraRota(),
      routes: {
        RotaGenerica.caminhoDaRota: (context) => RotaGenerica(),
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
  TextEditingController tempControler = TextEditingController();

  temperaturaF() {
    double f = 0;
    double c = double.parse(this.tempControler.text);
    f = (c * 1.8) + 32;
    return f;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Graus Celsius'),
      ),
      body: Column(children: [
        Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              controller: tempControler,
              decoration: InputDecoration(
                  suffixIcon: IconButton(
                      icon: Icon(Icons.clear),
                      onPressed: () => tempControler.clear()),
                  border: OutlineInputBorder()),
            )),
        ElevatedButton(
          child: Text("Converter"),
          onPressed: () {
            Navigator.pushNamed(
              context,
              RotaGenerica.caminhoDaRota,
              arguments: ArgumentosDaRota('Graus Celsius', tempControler.text,
                  'Graus Fahrenheit', temperaturaF()),
            );
          },
        ),
      ]),
    );
  }
}

class RotaGenerica extends StatelessWidget {
  static const caminhoDaRota = '/rotaGenerica';
  @override
  Widget build(BuildContext context) {
    ArgumentosDaRota argumentos =
        ModalRoute.of(context)!.settings.arguments as ArgumentosDaRota;
    return Scaffold(
      appBar: AppBar(
        title: Text('Graus Fahrenheit'),
      ),
      body: Center(
          child: Column(children: [
        Text(
          argumentos.tituloC + ":" + argumentos.mensagemC,
          style: TextStyle(
            fontSize: 20,
            color: Colors.green,
          ),
        ),
        Text(
          argumentos.tituloF + ":" + argumentos.mensagemF.toString(),
          style: TextStyle(
            fontSize: 20,
            color: Colors.red,
          ),
        ),
      ])),
    );
  }
}

class ArgumentosDaRota {
  String tituloC;
  String mensagemC;
  String tituloF;
  double mensagemF;
  ArgumentosDaRota(this.tituloC, this.mensagemC, this.tituloF, this.mensagemF);
}
