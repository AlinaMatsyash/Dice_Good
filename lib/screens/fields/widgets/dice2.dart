import 'dart:math';
import 'package:dice_good/banner_inline_page.dart';
import 'package:flutter/material.dart';

class Dice2 extends StatefulWidget {
  @override
  _Dice2State createState() => _Dice2State();
}

class _Dice2State extends State<Dice2> {
  int sum = 2;
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void changeDiceFace() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
      calculate();
    });
  }

  calculate() {
    sum = leftDiceNumber + rightDiceNumber;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(),
        GestureDetector(
          onTap: () => changeDiceFace(),
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Sum of dice = $sum',
                      style: Theme.of(context).textTheme.titleMedium),
                  const SizedBox(height: 20),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Image.asset(
                            'assets/images/dice$leftDiceNumber.png'),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Expanded(
                          child: Image.asset(
                              'assets/images/dice$rightDiceNumber.png')),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(
          height: 50,
          width: MediaQuery.of(context).size.width,
          child: BannerInlinePage(
            id: 'ca-app-pub-5218177686730446/6173558898',
          ),
        ),
      ],
    );
  }
}
