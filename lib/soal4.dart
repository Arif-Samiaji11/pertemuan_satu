import 'dart:io';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  String fullName = "";

  void updateFullName() {
    String firstName = firstNameController.text;
    String lastName = lastNameController.text;

    fullName = "$firstName $lastName";
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Input Nama'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                controller: firstNameController,
                decoration: InputDecoration(
                  labelText: 'Masukkan nama depan:',
                ),
                onSubmitted: (_) => updateFullName(),
              ),
              TextField(
                controller: lastNameController,
                decoration: InputDecoration(
                  labelText: 'Masukkan nama belakang:',
                ),
                onSubmitted: (_) => updateFullName(),
              ),
              SizedBox(height: 20),
              Text('Nama lengkap anda adalah:'),
              Text(
                fullName,
                style: TextStyle(fontSize: 24),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
