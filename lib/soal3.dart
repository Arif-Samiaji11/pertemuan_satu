import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  String teks = "Ini adalah Rosid";

  String tampilkanKalimat() {
    List<String> kataKecil = teks.split(' ');
    for (String kata in kataKecil) {
      if (kata.toLowerCase() == "rosid") {
        return kata;
      }
    }
    return "";
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Contoh Flutter'),
        ),
        body: Center(
          child: Text(
            tampilkanKalimat(),
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}
