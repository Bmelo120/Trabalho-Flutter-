import 'package:flutter/material.dart';

void main() {
  String nome = " Barbara ";
  String dia = " quinta-feira";
  runApp(
    Center(
      child: RichText(
        textAlign: TextAlign.center,
        textDirection: TextDirection.ltr,
        text: TextSpan(
          text: "Olá, ",
          style: TextStyle(
            color: Colors.green,
            fontSize: 30,
            fontWeight: FontWeight.bold,
            backgroundColor: Colors.white,
          ),
          children: <TextSpan>[
            TextSpan(
              text: '$nome',
              style: TextStyle(
                color: Colors.blue,
                backgroundColor: Colors.green,
                decoration: TextDecoration.underline,
                decorationColor: Colors.red,
                decorationStyle: TextDecorationStyle.double,
              ),
            ),
            TextSpan(
              text: '! \n',
            ),
            TextSpan(
              text: ' \nHoje é ',
              style: TextStyle(
                color: Colors.red,
                backgroundColor: Colors.yellow,
              ),
            ),
            TextSpan(
              text: '$dia!\n',
              style: TextStyle(
                color: Colors.red,
                backgroundColor: Colors.yellow,
              ),
            ),
            TextSpan(
              text: "Bom dia! \n",
            ),
          ],
        ),
      ),
    ),
  );
}
