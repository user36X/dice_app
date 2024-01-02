import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dice_app/presentation/providers/dice.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dice = ref.watch(diceProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('dice app'),
      ),
      body: Center(
        child: DiceSquare(
          numberOfDots: dice,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.replay_rounded,
        ),
        onPressed: () {
          ref.read(diceProvider.notifier).roll();
        },
      ),
    );
  }
}

class DiceSquare extends StatelessWidget {
  final int numberOfDots;

  const DiceSquare({
    Key? key,
    required this.numberOfDots,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: const Color.fromRGBO(224, 202, 38, 1),
      child: Stack(
        children: List.generate(
          numberOfDots,
          (index) => Positioned(
            top: 10 + index * 20,
            left: 10 + index * 20,
            child: const Dot(),
          ),
        ),
      ),
    );
  }
}

class Dot extends StatelessWidget {
  const Dot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 10,
      height: 10,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
      ),
    );
  }
}
