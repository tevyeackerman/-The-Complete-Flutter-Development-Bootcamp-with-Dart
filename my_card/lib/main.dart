import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(
    MaterialApp(
        home: MyCard()
    )
  );
}

class MyCard extends StatelessWidget {
  const MyCard({Key?key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
            child: Column(
                children: <Widget>[
                  PortfolioLink(),
                  NameAndTitle(),
                  Email(),
                  PhoneNumber()
                ]
            )
        ),
      )
    );
  }
}

class PortfolioLink extends StatelessWidget {
  const PortfolioLink({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: 150.0,
          height: 150.0,
          child: const CircleAvatar(
              backgroundImage: AssetImage('images/tevye_headshot.JPG')
          )
        )
      ]
    );
  }
}

class NameAndTitle extends StatelessWidget {
  const NameAndTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: <Widget>[
        Text('Tevye Ackerman',
          style: TextStyle(
            fontSize: 30,
          ),),
        Text('TECHNICAL SUPPORT SPECIALIST',
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 14,
          letterSpacing: 5
        ),
        )
      ]
    );
  }
}

class Email extends StatelessWidget {
  const Email({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black,
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: <Widget>[
            Icon(
              Icons.email,
              color: Colors.green,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'tevyeackerman@outlook.com',
              style: TextStyle(
                color: Colors.white
              ),
            )
          ],
        ),
      ),
    );
  }
}

class PhoneNumber extends StatelessWidget {
  const PhoneNumber({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black,
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: <Widget>[
            Icon(
              Icons.phone,
              color: Colors.green,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              '+27 69 135 6377',
              style: TextStyle(
                color: Colors.white
              ),
            )
          ],
        ),
      ),
    );
  }
}
