import 'package:flutter/material.dart';
import 'dart:math';

class FrasesDoDia extends StatefulWidget {
  @override
  _FrasesDoDiaState createState() => _FrasesDoDiaState();
}

class _FrasesDoDiaState extends State<FrasesDoDia> {
  final List<String> frases = [
    'Nossa maior fraqueza é desistir. O caminho mais certo para o sucesso é sempre tentar apenas uma vez mais.',
    'O tempo de estudo nunca é um tempo perdido.',
    'Estudar é investir no seu futuro.',
    'Esse esforço todo vai sim valer a pena.',
    'A melhor forma de prever o futuro é criá-lo.',
  ];
  String fraseAtual = 'Clique para gerar uma frase.';

  void gerarFrase() {
    setState(() {
      fraseAtual = frases[Random().nextInt(frases.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'images/logofrases.png',
          height: 150,
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              fraseAtual,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: gerarFrase,
              child: Text('Nova Frase'),
            ),
          ],
        ),
      ),
    );
  }
}
