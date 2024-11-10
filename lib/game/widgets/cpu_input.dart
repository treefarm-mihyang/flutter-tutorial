import 'package:flutter/material.dart';
import 'package:toonflix/game/enum.dart';
import 'package:toonflix/game/widgets/input_card.dart';

class CpuInput extends StatelessWidget {
  final bool isDone;
  final InputType cpuInput;

  const CpuInput({required this.isDone, required this.cpuInput, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(child: SizedBox.expand()),
        Expanded(
          child: Center(
            child: InputCard(
              child: getCpuInput(),
            ),
          ),
        ),
        const Expanded(child: SizedBox.expand()),
      ],
    );
  }

  Widget getCpuInput() {
    if (isDone) {
      return Image.asset(cpuInput.path);
    }
    return const SizedBox(
      width: 64,
      height: 64,
      child: Icon(
        Icons.question_mark_outlined,
        size: 48,
      ),
    );
  }
}
