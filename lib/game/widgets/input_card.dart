import 'package:flutter/material.dart';
import 'package:toonflix/game/widgets/input_content.dart';

class InputCard extends StatelessWidget {
  final Widget child;
  final VoidCallback? callback;

  const InputCard({
    required this.child,
    this.callback,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () => callback?.call(),
        child: InputContent(child: child),
      ),
    );
  }
}
