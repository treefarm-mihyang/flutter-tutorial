import 'dart:math';

import 'package:flutter/material.dart';

class SliderWidget extends StatefulWidget {
  const SliderWidget({super.key});

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  double value = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("${value.round()}"),
        Slider(
          value: value,
          onChanged: (newValue) => setState(() => value = newValue),
          divisions: 100,
          max: 100,
          min: 0,
          label: value.round().toString(),
        ),
      ],
    );
  }
}
