import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String kataPertama = "Halo";
    String kataKedua = "Dunia";
    String hasil = kataPertama + " " + kataKedua;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Contoh Flutter'),
        ),
        body: Center(
          child: Text(
            hasil,
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}
