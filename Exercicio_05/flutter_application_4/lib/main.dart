import 'package:flutter/material.dart';

void main() {
  runApp(
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: FittedBox(
            fit: BoxFit.contain,
            child: const FlutterLogo(),
          ),
        ),
        Expanded(
          child: FittedBox(
            fit: BoxFit.contain,
            child: Image(
              image: NetworkImage(
                'https://picsum.photos/250?image=9',
              ),
            ),
          ),
        ),
        Text(
          "Google Flutter",
          textDirection: TextDirection.ltr,
          style: TextStyle(
            color: Colors.blue,
            backgroundColor: Colors.white,
            fontSize: 30,
          ),
        ),
      ],
    ),
  );
}
