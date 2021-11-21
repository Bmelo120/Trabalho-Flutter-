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

class PrimeiraRota extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Primeira Rota'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.red,
              ),
              accountName: Text("Ana"),
              accountEmail: Text("ana@ana.com.br"),
              currentAccountPicture: CircleAvatar(
                radius: 30.0,
                backgroundImage: NetworkImage(
                  'https://www.otaviomiranda.com.br/wp-content/uploads/2018/07/foto-perfil-2.png',
                ),
                backgroundColor: Colors.transparent,
              ),
            ),
            ListTile(
              leading: Icon(Icons.video_collection),
              title: Text("Rota 02"),
              subtitle: Text("Siga para a Rota 02."),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                print('Ir para a Rota 02.');
                Navigator.pushNamed(
                  context,
                  RotaGenerica.caminhoDaRota,
                  arguments: ArgumentosDaRota("Segunda Rota"),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.analytics),
              title: Text("Rota 03"),
              subtitle: Text("Siga para a Rota 03"),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                print('Ir para a Rota 03.');
                Navigator.pushNamed(
                  context,
                  RotaGenerica.caminhoDaRota,
                  arguments: ArgumentosDaRota("Segunda Rota"),
                );
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
  @override
  Widget build(BuildContext context) {
    ArgumentosDaRota argumentos =
        ModalRoute.of(context)!.settings.arguments as ArgumentosDaRota;
    return Scaffold(
      appBar: AppBar(
        title: Text(argumentos.titulo),
      ),
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Padding(
          padding: EdgeInsets.fromLTRB(0, 0, 0, 80),
          child: Text(
            argumentos.titulo,
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
      ])),
    );
  }
}

class ArgumentosDaRota {
  String titulo;
  ArgumentosDaRota(
    this.titulo,
  );
}
