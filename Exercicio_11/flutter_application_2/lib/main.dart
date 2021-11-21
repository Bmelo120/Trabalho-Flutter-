import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Home(),
      ),
    );

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Álbum"),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                child: Image.network(
                    "https://i2.wp.com/turismo.eurodicas.com.br/wp-content/uploads/2019/05/colmar-na-franca.jpg?fit=1360%2C907&ssl=1"),
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Pag1()));
                },
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                  child: Image.network(
                      "https://thumbs.dreamstime.com/b/taditional-eyed-barcos-luzzu-em-marsaxlokk-malta-97812649.jpg"),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Pag2()));
                  },
                )),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                  child: Image.network(
                      "https://img.itinari.com/pages/images/original/50727a9a-9840-4065-b3fc-e1721b2e3e42-dreamer4787.jpg?ch=DPR&dpr=1&w=1600&s=ae8ba33ed9015c26f76cdbc8fcf992b8"),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Pag3()));
                  },
                )),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                  child: Image.network(
                      "https://i1.wp.com/nunypelomundo.com/wp-content/uploads/2019/09/DSC0580.jpg?resize=474%2C332&ssl=1"),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Pag4()));
                  },
                )),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                    child: Image.network(
                        "https://h8f7z4t2.stackpathcdn.com/wp-content/uploads/2016/10/8579284127_8ea36bf402_b.jpg"),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Pag5()));
                    })),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                  child: Image.network(
                      "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0f/7c/22/e4/reine-lofoten.jpg?w=700&h=500&s=1"),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Pag6()));
                  },
                )),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                  child: Image.network(
                      "https://media.istockphoto.com/photos/historic-town-of-freiburg-im-breisgau-badenwurttemberg-germany-picture-id619762692"),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Pag7()));
                  },
                )),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                  child: Image.network(
                      "https://upload.wikimedia.org/wikipedia/commons/3/31/Arosa_mit_Obersee_im_Winter.jpg"),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Pag8()));
                  },
                )),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                    child: Image.network(
                        "https://i1.wp.com/umaturistanasnuvens.com/wp-content/uploads/2018/07/O-que-fazer-em-Bergen-Noruega-Fl%C3%B8ibanen1_.jpg?resize=1170%2C780"),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Pag9()));
                    })),
          ],
        ),
      ),
    );
  }
}

class Pag1 extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Colmar"),
          backgroundColor: Colors.green,
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
                padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
                child: Text("Colmar, França", style: TextStyle(fontSize: 35))),
            Row(
              children: [
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: Text(
                          "Colmar pode proporcionar uma experiência tanto francesa quanto germânica.É sem dúvida o melhor lugar na França para usufruir de cervejas e salsichas típicos da culinária alemã e ao mesmo tempo saborear as iguarias francesas, como os melhores queijos e vinhos.",
                        )))
              ],
            ),
            Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 30),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back),
                    style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        primary: Colors.green,
                        onPrimary: Colors.orange,
                        padding: EdgeInsets.all(20)),
                  ),
                ])),
          ],
        )));
  }
}

class Pag2 extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Marsaxlokk"),
          backgroundColor: Colors.green,
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
                padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
                child:
                    Text("Marsaxlokk, Malta ", style: TextStyle(fontSize: 35))),
            Row(
              children: [
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: Text(
                          "Essa cidadezinha é famosa pelos barcos de pescaria — uma importante fonte de renda a Marsaxlokk — e fascinantes mercados espalhados pela bela costa. Não há melhor lugar no mundo para pescar tranquilamente enquanto aprecia as belezas do Mar Mediterrâneo.",
                        )))
              ],
            ),
            Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 30),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back),
                    style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        primary: Colors.green,
                        onPrimary: Colors.orange,
                        padding: EdgeInsets.all(20)),
                  ),
                ])),
          ],
        )));
  }
}

class Pag3 extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Pučišća"),
          backgroundColor: Colors.green,
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
                padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
                child:
                    Text("Pučišća, Croácia ", style: TextStyle(fontSize: 35))),
            Row(
              children: [
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: Text(
                          "Com cerca de 2 mil habitantes, essa cidadezinha à beira-mar proporciona uma estadia tranquila, com muito sol e momentos prazerosos de relaxamento.",
                        )))
              ],
            ),
            Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 30),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back),
                    style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        primary: Colors.green,
                        onPrimary: Colors.orange,
                        padding: EdgeInsets.all(20)),
                  ),
                ])),
          ],
        )));
  }
}

class Pag4 extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Annecy"),
          backgroundColor: Colors.green,
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
                padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
                child: Text("Annecy, França ", style: TextStyle(fontSize: 35))),
            Row(
              children: [
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: Text(
                          "Esta cidade francesa abriga um maravilhoso castelo erguido no século 12, que resistiu a muitas guerras, principalmente contra a Inglaterra, e é descrita em diversas peças escritas por William Shakespeare",
                        )))
              ],
            ),
            Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 30),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back),
                    style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        primary: Colors.green,
                        onPrimary: Colors.orange,
                        padding: EdgeInsets.all(20)),
                  ),
                ])),
          ],
        )));
  }
}

class Pag5 extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Manarola"),
          backgroundColor: Colors.green,
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
                padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
                child:
                    Text("Manarola, Itália", style: TextStyle(fontSize: 35))),
            Row(
              children: [
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: Text(
                          "Essa cidade é sinônimo de lindas fotografias, como você pode ver em diversos sites. É um dos mais pitorescos e coloridos lugares da Itália e que fica ainda mais espetacular à noite.",
                        )))
              ],
            ),
            Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 30),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back),
                    style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        primary: Colors.green,
                        onPrimary: Colors.orange,
                        padding: EdgeInsets.all(20)),
                  ),
                ])),
          ],
        )));
  }
}

class Pag6 extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Reine"),
          backgroundColor: Colors.green,
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
                padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
                child: Text("Reine, Noruega ", style: TextStyle(fontSize: 35))),
            Row(
              children: [
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: Text(
                          "Este lago em Reine é tão cristalino que você pode ver as belezas desse lugar em dobro, pois reflete tudo ao redor, e ainda te dá a sensação de que você está envolto por gigantescas montanhas.",
                        )))
              ],
            ),
            Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 30),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back),
                    style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        primary: Colors.green,
                        onPrimary: Colors.orange,
                        padding: EdgeInsets.all(20)),
                  ),
                ])),
          ],
        )));
  }
}

class Pag7 extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Friburgo em Brisgóvia"),
          backgroundColor: Colors.green,
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
                padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
                child: Text("Friburgo em Brisgóvia, Alemanha ",
                    style: TextStyle(fontSize: 30))),
            Row(
              children: [
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: Text(
                          "Um fato interessante é que a cidade é uma das mais frias e mais quentes da Alemanha e é inacreditável pensar, que no verão a temperatura chega a quase 40 graus!",
                        )))
              ],
            ),
            Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 30),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back),
                    style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        primary: Colors.green,
                        onPrimary: Colors.orange,
                        padding: EdgeInsets.all(20)),
                  ),
                ])),
          ],
        )));
  }
}

class Pag8 extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Arosa"),
          backgroundColor: Colors.green,
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
                padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
                child: Text("Arosa, Suíça ", style: TextStyle(fontSize: 35))),
            Row(
              children: [
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: Text(
                          "Por muitos anos, Arosa tem sido uma atrativa vila para prática de esqui, embora hoje tenha outros atrativos. O time local de hóquei está fazendo campeonatos nacionais, então Arosa tornou-se muito popular entre os jovens suíços.",
                        )))
              ],
            ),
            Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 30),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back),
                    style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        primary: Colors.green,
                        onPrimary: Colors.orange,
                        padding: EdgeInsets.all(20)),
                  ),
                ])),
          ],
        )));
  }
}

class Pag9 extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Bergen"),
          backgroundColor: Colors.green,
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
                padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
                child:
                    Text("Bergen, Noruega ", style: TextStyle(fontSize: 35))),
            Row(
              children: [
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: Text(
                          " Bergen é a segunda maior cidade da Noruega e provavelmente a única desta lista que talvez te faça considerar uma visita a Londres ou Paris, no quesito financeiro, porque é local com o custo alto.",
                        )))
              ],
            ),
            Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 30),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back),
                    style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        primary: Colors.green,
                        onPrimary: Colors.orange,
                        padding: EdgeInsets.all(20)),
                  ),
                ])),
          ],
        )));
  }
}
