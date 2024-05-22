import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _numberCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Desafio 1 - digiUP',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _numberCounter += 1;
          });
        },
        child: Image(
          height: 35,
          image: AssetImage('lib/icons/pointer.png'),
        ),
        backgroundColor: Colors.blue[200],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'Contador de Cliques',
              style: TextStyle(
                fontSize: 35.0,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 35.0),
            Text(
              '$_numberCounter',
              style: TextStyle(
                fontSize: 50.0,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}