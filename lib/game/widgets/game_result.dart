import 'package:flutter/material.dart';
import 'package:toonflix/game/enum.dart';

class GameResult extends StatelessWidget {
  final bool isDone;
  final Result? result;
  final VoidCallback callback;

  const GameResult({
    this.result,
    required this.isDone,
    required this.callback,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    if (isDone) {
      return Column(
        children: [
          Center(
            child: Text(
              result!.displayString,
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          TextButton(
            onPressed: callback,
            child: const Text(
              "다시 하기",
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      );
    }
    return const Center(
      child: Text(
        "가위 바위 보 중 하나를 선택해주세요.",
        style: TextStyle(
          fontSize: 20,
        ),
      ),
    );
  }
}
