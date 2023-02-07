import 'dart:math';

import 'package:dice_good/banner_inline_page.dart';
import 'package:flutter/material.dart';

class Dice1 extends StatefulWidget {
  @override
  _Dice1State createState() => _Dice1State();
}

class _Dice1State extends State<Dice1> {
  int leftDiceNumber = 1;

  void changeDiceFace() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(),
        GestureDetector(
          onTap: () => changeDiceFace(),
          child: Container(
            width: MediaQuery.of(context).size.width - 16,
            child: Padding(
              padding: const EdgeInsets.all(70.0),
              child: Image.asset(
                'assets/images/dice$leftDiceNumber.png',
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
