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
  TextEditingController larguraController = TextEditingController();
  TextEditingController comprimentoController = TextEditingController();
  TextEditingController alturaController = TextEditingController();
  String resp = "";
  calculo() {
    double largura = double.parse(this.larguraController.text);
    double comprimento = double.parse(this.comprimentoController.text);
    double altura = double.parse(this.alturaController.text);
    double volume = comprimento * largura * altura;
    resp = "Volume do paralelepidedo = " + volume.toStringAsFixed(2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Volume paralelepípedo")),
      body: Center(
        child: Column(
          children: [
            Text("Digite a largura:"),
            TextField(
              controller: larguraController,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                    onPressed: () => larguraController.clear(),
                    icon: Icon(Icons.clear)),
                border: OutlineInputBorder(),
              ),
            ),
            Text("Digite a altura:"),
            TextField(
              controller: alturaController,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                    onPressed: () => alturaController.clear(),
                    icon: Icon(Icons.clear)),
                border: OutlineInputBorder(),
              ),
            ),
            Text("Digite o comprimento:"),
            TextField(
              controller: comprimentoController,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                    onPressed: () => comprimentoController.clear(),
                    icon: Icon(Icons.clear)),
                border: OutlineInputBorder(),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      setState(calculo);
                    },
                    child: Text("Calcular",
                        style: TextStyle(color: Colors.black, fontSize: 20)))
              ],
            ),
            Text(
              resp,
              style: TextStyle(color: Colors.black, fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}
