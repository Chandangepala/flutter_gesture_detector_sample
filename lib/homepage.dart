import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _HomePage();
}

class _HomePage extends State<HomePage>{

  //variables
  int increamentTappedCount = 0;

  //method
  void _increamentCounter(){
    setState((){
      increamentTappedCount++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('Tapped ${increamentTappedCount} Times'),
              GestureDetector(
                onTap: _increamentCounter,
                child: Container(
                  padding: EdgeInsets.all(15),
                  color: Colors.green.shade200,
                  child: Text('Tap Here', style: TextStyle(fontSize: 25)),
                ),
              )
            ],
          ),
        )
    );
  }
}