import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';

class DiceBloc extends Bloc<int, List<int>> {
  DiceBloc() : super([1]);

  void oneDice() => [_rollDice()];

  void twoDice() => [_rollDice(), _rollDice()];

  int _rollDice() {
    return 1 + Random().nextInt(6);
  }
}
