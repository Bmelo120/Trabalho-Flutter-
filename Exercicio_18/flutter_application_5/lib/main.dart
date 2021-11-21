import 'package:flutter/material.dart';

void main() => runApp(MeuAplicativo());

class MeuAplicativo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PrimeiraRota(),
    );
  }
}

class PrimeiraRota extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Primeira Rota'),
      ),
      drawer: Container(
        color: Colors.amber,
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.red,
              ),
              accountName: Text("Ana"),
              accountEmail: Text("ana@ana.com.br"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text("A",
                    style: TextStyle(fontSize: 40.0, color: Colors.red)),
              ),
            ),
            ListTile(
              leading: Icon(Icons.video_collection),
              title: Text("Rota 02"),
              subtitle: Text("Siga para a Rota 02."),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                print('Ir para a Rota 02.');
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          RotaGenerica("Segunda Rota", Colors.black),
                    ));
              },
            ),
            ListTile(
              leading: Icon(Icons.analytics),
              title: Text("Rota 03"),
              subtitle: Text("Siga para a Rota 03"),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                print('Ir para a Rota 03.');
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          RotaGenerica("Terceira Rota", Colors.purple[900]),
                    ));
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Rota 01"),
              subtitle: Text("Voltar para a Rota 01"),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                print('Voltar para a Rota 01.');
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: const Text('Corpo'),
      ),
    );
  }
}

class RotaGenerica extends StatelessWidget {
  static const caminhoDaRota = '/rotaGenerica';

  final String titulo;
  final Color? cor;

  // ignore: use_key_in_widget_constructors
  const RotaGenerica(this.titulo, this.cor);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(titulo),
      ),
      body: Container(
          color: cor,
          child: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 80),
                  child: Text(
                    titulo,
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.red,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: ElevatedButton(
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(5, 7, 0, 7),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Text('Voltar para a Primeira Rota'),
                          Icon(
                            Icons.navigate_before_sharp,
                          )
                        ],
                      ),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ]))),
    );
  }
}

class ArgumentosDaRota {
  String titulo;
  ArgumentosDaRota(
    this.titulo,
  );
}
