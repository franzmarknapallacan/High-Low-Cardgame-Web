import 'dart:math';
import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(const MaterialApp(
    home: menu(),
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<int> lastguesses = [];
  final String str = ('Your number is  ');
  int random = 0;
  int previous = 0;
  int score = 0;
  int guessed_card1 = 53;
  int guessed_card2 = 53;
  int guessed_card3 = 53;
  int guessed_card4 = 53;
  int guessed_card5 = 53;
  int future_value = 0;
  int previous_value = 0;
  callback(selector) async {
    await Future.delayed(const Duration(seconds: 2), () {
      previous = random;
      guessed_card1 = previous;
      setState(() {
        random = selector;
      });
    });
  }

  callback1(previousval) async {
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        guessed_card2 = previousval;
      });
    });
  }

  callback2() async {
    await Future.delayed(const Duration(seconds: 1), () async {
      setState(() {
        guessed_card3 = guessed_card2;
      });
    });
  }

  callback3() async {
    await Future.delayed(const Duration(seconds: 1), () async {
      setState(() {
        guessed_card4 = guessed_card3;
      });
    });
  }

  callback4(previousval) {
    Future.delayed(const Duration(seconds: 0), () async {
      guessed_card5 = previousval;

      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('background.jpg'), fit: BoxFit.cover)),
          child: Stack(
            children: [
              Positioned(
                left: 1070,
                bottom: 225,
                child: Image.asset(
                  'assets/$guessed_card5.png',
                  width: 200,
                  height: 280,
                ),
              ),
              Positioned(
                left: 870,
                bottom: 225,
                child: Image.asset(
                  'assets/$guessed_card4.png',
                  width: 200,
                  height: 280,
                ),
              ),
              Positioned(
                left: 670,
                bottom: 225,
                child: Image.asset(
                  'assets/$guessed_card3.png',
                  width: 200,
                  height: 280,
                ),
              ),
              Positioned(
                left: 470,
                bottom: 225,
                child: Image.asset(
                  'assets/$guessed_card2.png',
                  width: 200,
                  height: 280,
                ),
              ),
              Positioned(
                left: 270,
                bottom: 225,
                child: Image.asset(
                  'assets/$guessed_card1.png',
                  width: 200,
                  height: 280,
                ),
              ),
              Positioned(
                bottom: 220,
                left: 60,
                child: Image.asset(
                  'assets/$guessed_card1.png',
                  width: 210,
                  height: 290,
                ),
              ),
              Positioned(
                bottom: 30,
                left: 270,
                child: ElevatedButton(
                  child: Text('HIGH',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 60,
                        color: Color.fromARGB(255, 255, 0, 0),
                      )),
                  onPressed: () {
                    List<int> cardValues = [
                      1,
                      1,
                      1,
                      1,
                      2,
                      2,
                      2,
                      2,
                      3,
                      3,
                      3,
                      3,
                      4,
                      4,
                      4,
                      4,
                      5,
                      5,
                      5,
                      5,
                      6,
                      6,
                      6,
                      6,
                      7,
                      7,
                      7,
                      7,
                      8,
                      8,
                      8,
                      8,
                      9,
                      9,
                      9,
                      9,
                      10,
                      10,
                      10,
                      10,
                      11,
                      11,
                      11,
                      11,
                      12,
                      12,
                      12,
                      12,
                      13,
                      13,
                      13,
                      13
                    ];
                    future_value = cardValues.elementAt(random);
                    previous_value = cardValues.elementAt(previous);

                    if (previous_value <= future_value) {
                      print('$previous_value,$future_value');
                      score++;
                      print('Score :$score');
                      Future.delayed(const Duration(seconds: 1), () {
                        callback3();
                        callback2();
                        setState(() {
                          callback1(previous);
                        });
                        callback4(guessed_card4);
                      });
                    } else {
                      setState(() {
                        score = 0;
                        random = 0;
                        previous = 0;
                        previous_value = 0;
                        future_value = 0;
                        guessed_card1 = 53;
                        guessed_card2 = 53;
                        guessed_card3 = 53;
                        guessed_card4 = 53;
                        guessed_card5 = 53;
                      });
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => gameover()));
                    }
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 0, 0, 0),
                      padding: EdgeInsets.fromLTRB(30, 30, 30, 30)),
                ),
              ),
              Positioned(
                bottom: 30,
                left: 670,
                child: ElevatedButton(
                  child: Text('LOW',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 60,
                        color: Color.fromARGB(255, 255, 0, 0),
                      )),
                  onPressed: () {
                    int guess = 0;
                    List<int> cardValues = [
                      1,
                      1,
                      1,
                      1,
                      2,
                      2,
                      2,
                      2,
                      3,
                      3,
                      3,
                      3,
                      4,
                      4,
                      4,
                      4,
                      5,
                      5,
                      5,
                      5,
                      6,
                      6,
                      6,
                      6,
                      7,
                      7,
                      7,
                      7,
                      8,
                      8,
                      8,
                      8,
                      9,
                      9,
                      9,
                      9,
                      10,
                      10,
                      10,
                      10,
                      11,
                      11,
                      11,
                      11,
                      12,
                      12,
                      12,
                      12,
                      13,
                      13,
                      13,
                      13
                    ];
                    future_value = cardValues.elementAt(random);
                    previous_value = cardValues.elementAt(previous);
                    if (previous_value > future_value) {
                      print('$previous_value,$future_value');

                      score++;
                      print('Score :$score');
                      Future.delayed(const Duration(seconds: 1), () {
                        callback3();
                        callback2();
                        setState(() {
                          callback1(previous);
                        });
                        callback4(guessed_card4);
                      });
                    } else {
                      setState(() {
                        score = 0;
                        random = 0;
                        previous_value = 0;
                        future_value = 0;
                        guessed_card1 = 53;
                        guessed_card2 = 53;
                        guessed_card3 = 53;
                        guessed_card4 = 53;
                        guessed_card5 = 53;
                      });
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => gameover()));
                    }
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                      padding: EdgeInsets.fromLTRB(30, 30, 30, 30)),
                ),
              ),
              Positioned(
                  bottom: 30,
                  left: 1050,
                  child: getpicture(
                    callback: callback,
                  )),
              Positioned(
                  bottom: 550,
                  left: 1000,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(249, 7, 7, 7)),
                      child: Text(
                        'Score: $score',
                        style: TextStyle(
                            fontSize: 40,
                            color: Color.fromARGB(184, 252, 1, 1)),
                      ))),
            ],
          ),
        ),
      ),
    );
  }
}

class getpicture extends StatelessWidget {
  int selector = 0;

  final Function callback;
  getpicture({
    required this.callback,
  });
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        selector = Random().nextInt(52);

        callback(selector);
      },
      child: Text('NEXT',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 60,
            color: Color.fromARGB(255, 248, 0, 0),
          )),
      style: ElevatedButton.styleFrom(
          primary: Color.fromARGB(249, 0, 0, 0),
          padding: EdgeInsets.fromLTRB(30, 30, 30, 30)),
    );
  }
}

class gameover extends StatefulWidget {
  const gameover({Key? key}) : super(key: key);

  @override
  State<gameover> createState() => _menuState();
}

class _menuState extends State<gameover> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('menu.jpg'), fit: BoxFit.cover)),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Colors.black12.withOpacity(0.0),
                  Colors.black87.withOpacity(0.6)
                ], begin: Alignment.center),
              ),
              child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: 1366.0,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Colors.black12, Colors.black87])),
                  )),
            ),
          ),
          Positioned(
              left: 330,
              bottom: 200,
              child: Image.asset(
                'Gameover.png',
                width: 700,
                height: 600,
              )),
          Positioned(
              left: 570,
              bottom: 200,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Home()));
                },
                child: Text('Try Again'),
                style: ButtonStyle(
                    maximumSize: MaterialStateProperty.all(Size(400, 500)),
                    textStyle: MaterialStateProperty.all(TextStyle(
                      fontSize: 50,
                    )),
                    elevation: MaterialStateProperty.all<double>(20.0),
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Color.fromARGB(255, 3, 255, 11))),
              )),
          Positioned(
              left: 630,
              bottom: 100,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => menu()));
                },
                child: Text('Exit'),
                style: ButtonStyle(
                    maximumSize: MaterialStateProperty.all(Size(350, 400)),
                    textStyle: MaterialStateProperty.all(TextStyle(
                      fontSize: 50,
                    )),
                    elevation: MaterialStateProperty.all<double>(20.0),
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Color.fromARGB(255, 3, 255, 11))),
              ))
        ],
      ),
    );
  }
}

class menu extends StatefulWidget {
  const menu({Key? key}) : super(key: key);

  @override
  State<menu> createState() => _MenuState();
}

class _MenuState extends State<menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('menu.jpg'), fit: BoxFit.cover)),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Colors.black12.withOpacity(0.0),
                  Colors.black87.withOpacity(0.6)
                ], begin: Alignment.center),
              ),
              child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: 1366.0,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Colors.black12, Colors.black87])),
                  )),
            ),
          ),
          Positioned(
              left: 280,
              bottom: 180,
              child: Image.asset(
                'High-low.png',
                width: 800,
                height: 600,
              )),
          Positioned(
              left: 610,
              bottom: 200,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Home()));
                },
                child: Text('Start'),
                style: ButtonStyle(
                    maximumSize: MaterialStateProperty.all(Size(200, 300)),
                    textStyle: MaterialStateProperty.all(TextStyle(
                      fontSize: 50,
                    )),
                    elevation: MaterialStateProperty.all<double>(20.0),
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Color.fromARGB(255, 3, 255, 11))),
              )),
          Positioned(
              left: 250,
              bottom: 95,
              child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Instructions: First by pressing the "Next" button, a card flicks and whatever shows on it, you`ll guess, base on the card being shown',
                    style: TextStyle(color: Colors.black),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                  ))),
          Positioned(
              left: 330,
              bottom: 55,
              child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'if the next card will be "High" click the High button and if you`ll guess on "Low" click on the Low Button.',
                    style: TextStyle(color: Colors.black),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                  ))),
          Positioned(
              left: 328,
              bottom: 15,
              child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'And if your guess are right, the game will go on and if your guess is wrong, it will be a gameover for you.',
                    style: TextStyle(color: Colors.black),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                  )))
        ],
      ),
    );
  }
}
