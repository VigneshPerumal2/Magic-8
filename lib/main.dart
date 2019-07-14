import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
          home: Scaffold(
        appBar: AppBar(
          title: Text('Ask Me Anything'),
        ),
        body: show()

      ),
      debugShowCheckedModeBanner: false),
    );

class show extends StatefulWidget {
  @override
  _showState createState() => _showState();
}

class _showState extends State<show> {
  @override
  int bno = 1;
  void change(){
    bno=Random().nextInt(5)+1;
  }
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          child: Expanded(
            child: FlatButton(child: Image.asset('images/ball$bno.png'),onPressed: (){
              setState(() {
                change();
              });
            }),
          ),
        ),

      ],
    );
  }
}
