import 'package:dice_good/screens/fields/widgets/dice1.dart';
import 'package:dice_good/screens/fields/widgets/dice2.dart';
import 'package:dice_good/screens/menu/screen.dart';
import 'package:flutter/material.dart';

class Field extends StatefulWidget {
  const Field({Key? key}) : super(key: key);

  @override
  _FieldState createState() => _FieldState();
}

class _FieldState extends State<Field> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Click on the dice',
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
      body: chose == false ? Dice2() : Dice1(),
    );
  }
}
