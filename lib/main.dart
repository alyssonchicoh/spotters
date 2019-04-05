import 'package:flutter/material.dart';
import 'package:spotters/telas/HomeScreen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() {
  Firestore.instance.collection("teste").document("teste").setData({"teste":"teste"});
  runApp(Spotter());
}


class Spotter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Spotter",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Color.fromARGB(255, 0, 0, 0),
      ),
      debugShowCheckedModeBanner: false,
      home: TelaInicial(),
    );
  }
}
