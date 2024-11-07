import 'package:flutter/material.dart';

class Checkboxes extends StatefulWidget {
  const Checkboxes({super.key});

  @override
  State<Checkboxes> createState() => _CheckboxesState();
}

class _CheckboxesState extends State<Checkboxes> {
  late List<bool> values;

  @override
  void initState() {
    super.initState();
    values = [false, false, false];
  }

  void onChanged(int index, bool value) {
    setState(() {
      values[index] = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: values[0],
          onChanged: (value) => onChanged(0, value ?? false),
        ),
        Checkbox(
          value: values[1],
          onChanged: (value) => onChanged(1, value ?? false),
        ),
        Checkbox(
          value: values[2],
          onChanged: (value) => onChanged(2, value ?? false),
        )
      ],
    );
  }
}
