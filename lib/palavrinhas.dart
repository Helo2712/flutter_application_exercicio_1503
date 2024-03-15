import 'package:flutter/material.dart';
import 'dart:math';

class Mypalavrinhas extends StatefulWidget {
  const Mypalavrinhas({Key? key});

  @override
  State<Mypalavrinhas> createState() => _MypalavrinhasState();
}

class _MypalavrinhasState extends State<Mypalavrinhas> {
  List<String> listadefrases = [
    "Se você quer ter um dia incrível, comece com um belo café da manhã, repleto de sabor e energia.",
    "Um café da manhã completo, acompanhado de um café quentinho, é o combustível perfeito para uma jornada de sucesso.",
    "Café da manhã sem café é como festa sem música: sem graça."
  ];
  String fraseAtual = "";
  final Random _random = Random();

  @override
  void initState() {
    super.initState();
    // Inicializar a frase atual
    atualizarFrase();
  }

  void atualizarFrase() {
    setState(() {
      fraseAtual = listadefrases[_random.nextInt(listadefrases.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Frases do dia",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 146, 113, 101),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            SizedBox(
              height: 200,
              width: 400,
              child: Image.network(
                  "https://cdn.pixabay.com/photo/2024/02/25/13/30/coffee-8595772_640.jpg"),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Frase do dia",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              fraseAtual,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                atualizarFrase();
              },
              child: Text("Nova frase"),
            )
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(home: Mypalavrinhas()));
}
