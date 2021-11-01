import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(const BallPage());

class BallPage extends StatelessWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Magic 8 Ball",
        home: Scaffold(
            backgroundColor: Colors.blue,
            appBar: AppBar(
              title: const Text('Ask me Anything'),
              backgroundColor: Colors.blue.shade900,
            ),
            body: BallContent()));
  }
}

class BallContent extends StatefulWidget {
  @override
  _BallContentState createState() => _BallContentState();
}

class _BallContentState extends State<BallContent> {
  int answerNumber = Random().nextInt(5) + 1;
  void rollBall() {
    setState(() {
      answerNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
            child: TextButton(
                onPressed: () {
                  rollBall();
                },
                child: Image.asset('images/ball$answerNumber.png'))));
  }
}
