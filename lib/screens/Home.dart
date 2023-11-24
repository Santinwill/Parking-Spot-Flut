import 'package:flutter/material.dart';
import '../components/Header.dart';
import '../components/Menu.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(context),
      drawer: Menu(context),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://boletimjuridico.publicacoesonline.com.br/wp-content/uploads/2015/10/estacionamento.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Container(
            padding: EdgeInsets.all(
                16.0), // Adicione um preenchimento ao redor do texto
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                  10.0), // Adicione bordas arredondadas se desejar
              color: Colors.black.withOpacity(0.5), // Cor de fundo do retângulo
            ),
            child: Text(
              "Welcome!",
              style: TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
