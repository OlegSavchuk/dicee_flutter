import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  @override
  int diceNumberLeft = 1;
  int diceNumberRight = 1;

  void ChangeNumber() {
    diceNumberLeft = Random().nextInt(6) + 1;
    diceNumberRight = Random().nextInt(6) + 1;
  }

  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(
                  () {
                    ChangeNumber();
                  },
                );
              },
              child: Image.asset('images/dice$diceNumberLeft.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(
                  () {
                    ChangeNumber();
                  },
                );
              },
              child: Image.asset('images/dice$diceNumberRight.png'),
            ),
          ),
        ],
      ),
    );
  }
}
