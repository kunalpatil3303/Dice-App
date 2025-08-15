import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(title: Text('Dice'), backgroundColor: Colors.red),
        body: DicePage(),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var LeftDieNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    LeftDieNumber = 6;
                  });
                },
                child: Image.asset('images/dice$LeftDieNumber.png'),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: TextButton(
                onPressed: () {
                  // Add your dice roll logic here
                  print('Dice 2 pressed');
                },
                child: Image.asset('images/dice1.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
