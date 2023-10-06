import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  String teks = "Rumahku di JAkarta";

  String versiHurufBesar() {
    return teks.toUpperCase();
  }

  String versiTitleCase() {
    List<String> kataKecil = teks.toLowerCase().split(' ');
    List<String> kataBesar = kataKecil.map((kata) {
      return kata[0].toUpperCase() + kata.substring(1);
    }).toList();
    return kataBesar.join(' ');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Contoh Flutter'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                versiHurufBesar(),
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(height: 20),
              Text(
                versiTitleCase(),
                style: TextStyle(fontSize: 24),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
