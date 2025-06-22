import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  //?stl - atalho para StatelessWidget
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //? o build method sempre retorna algo
    return const MaterialApp(
      //?MaterialApp exige um home:
      //?Mostrar ou nao mostrar o Debug Bar:
      //!debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
//?Funcao para o numero aleatorio ser gerado
  var numeroGerado = 0;

  int _gerarNumeroAleatorio() {
    //?Funcao Anonima
    Random numeroAleatorio = Random();
    return numeroAleatorio.nextInt(1000);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //?Responsavel pelo fundo branco do APP
      appBar: AppBar(
        backgroundColor: Colors.red,
        //?Barra no topo da tela
        title: const Text('Meu App'),
      ),
      body: Center(child: Text(numeroGerado.toString())), //?Refactor - Wrap with Center
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add_box),
        onPressed: () {
          setState(() {
            numeroGerado = _gerarNumeroAleatorio();
          });
          print(numeroGerado);
        }, //?Exige funcoes sem parametros
      ),
    );
  }
}
