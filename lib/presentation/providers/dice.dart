import 'dart:math';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DiceNotifier extends StateNotifier<int> {
  DiceNotifier() : super(0);

  roll() {
    state = 1 + Random().nextInt(6 - 1 + 1);
  }
}

final diceProvider = StateNotifierProvider<DiceNotifier, int>(
  (ref) => DiceNotifier(),
);
