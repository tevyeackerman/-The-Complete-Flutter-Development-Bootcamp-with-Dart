import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
     home: Scaffold(
       appBar: AppBar(
         title: const Center(
           child: Text('BurnYourMoney',
            style: TextStyle(
              color: Colors.white
            ),
           ),
         ),
         backgroundColor: Colors.blueGrey[900],
       ),
       body: const Center(
         child: Image(image: AssetImage('images/fluent-emoji_money-bag.jpg')),
       ),
       backgroundColor: Colors.blueGrey,
     ),
    )
  );
}