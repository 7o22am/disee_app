import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text('DICEE'),
        backgroundColor: Colors.red,
      ),
      body: Dicepage(),
    ),
  ));
}

class Dicepage extends StatefulWidget {
  const Dicepage({Key? key}) : super(key: key);

  @override
  State<Dicepage> createState() => _DicepageState();
}

class _DicepageState extends State<Dicepage> {
  int dicenum1 = 1;
  int dicenum2 = 2;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: FlatButton(
            onPressed: () {
              setState(() {
                dicenum1 = Random().nextInt(6) + 1;
                dicenum2 = Random().nextInt(6) + 1;
              });
            },
            child: Image.asset('img/$dicenum1.png'),
          )),
          Expanded(
              child: FlatButton(
            onPressed: () {
              setState(() {
                dicenum1 = Random().nextInt(6) + 1;
                dicenum2 = Random().nextInt(6) + 1;
              });
            },
            child: Image.asset('img/$dicenum2.png'),
          ))
        ],
      ),
    );
  }
}
