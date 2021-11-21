import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Home()));

class Home extends StatefulWidget {
  HomeState createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  TextEditingController pesoController = TextEditingController();
  TextEditingController alturaController = TextEditingController();
  String resp = "";

  imc() {
    double peso = double.parse(this.pesoController.text);
    double altura = double.parse(this.alturaController.text);
    double result = peso / (altura * altura);
    String classificacao = "";
    if (result < 16) {
      classificacao = "Magreza grave";
    } else {
      if (result >= 16 && result < 17) {
        classificacao = "Magreza moderada";
      } else {
        if (result >= 17 && result < 18.5) {
          classificacao = "Magreza leve";
        } else {
          if (result >= 18.5 && result < 25) {
            classificacao = "Saudavel";
          } else {
            if (result >= 25 && result < 30) {
              classificacao = "Sobrepeso";
            } else {
              if (result >= 30 && result < 35) {
                classificacao = "Obesidade Grau 1";
              } else {
                if (result >= 35 && result < 40) {
                  classificacao = "Obesidade Grau 2";
                } else {
                  classificacao = " Obesidade Grau 3";
                }
              }
            }
          }
        }
      }
    }
    this.resp = " O seu IMC é : " +
        result.toStringAsFixed(2) +
        " e a sua classificação é : $classificacao";
    return resp;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IMC'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Digite seu peso",
              style: TextStyle(fontSize: 15),
            ),
            TextField(
              controller: pesoController,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => pesoController.clear(),
                  icon: Icon(Icons.clear),
                ),
                border: OutlineInputBorder(),
              ),
            ),
            Text("Digite sua altura", style: TextStyle(fontSize: 15)),
            TextField(
              controller: alturaController,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => alturaController.clear(),
                  icon: Icon(Icons.clear),
                ),
                border: OutlineInputBorder(),
              ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              ElevatedButton(
                onPressed: () {
                  setState(imc);
                },
                child: Text("Calcular", style: TextStyle(fontSize: 20)),
              )
            ]),
            Text(resp, style: TextStyle(color: Colors.black, fontSize: 20)),
          ],
        ),
      ),
    );
  }
}


// Pedir pra ensinar colocar um do lado do outro 

