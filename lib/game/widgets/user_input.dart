import 'package:flutter/material.dart';
import 'package:toonflix/game/enum.dart';
import 'package:toonflix/game/widgets/input_card.dart';

class UserInput extends StatelessWidget {
  final bool isDone;
  final InputType? userInput;
  final Function(InputType) callback;

  const UserInput({
    this.userInput,
    required this.isDone,
    required this.callback,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    if (isDone) {
      return Row(
        children: [
          const Expanded(child: SizedBox.expand()),
          Expanded(
            child: Center(
              child: InputCard(
                child: Image.asset(userInput!.path),
              ),
            ),
          ),
          const Expanded(child: SizedBox.expand()),
        ],
      );
    }
    return Row(
      children: _getInputs(callback),
    );
  }
}

List<Widget> _getInputs(Function(InputType) callback) {
  return InputType.values
      .map((type) => InputCard(
            callback: () => callback.call(type),
            child: Image.asset(type.path),
          ))
      .toList();
}
