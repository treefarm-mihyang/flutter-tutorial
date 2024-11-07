import 'package:flutter/material.dart';

class Radios extends StatefulWidget {
  const Radios({super.key});

  @override
  State<Radios> createState() => _RadiosState();
}

enum RadoiValue {
  value1,
  value2,
  value3,
}

class _RadiosState extends State<Radios> {
  RadoiValue selectedValue = RadoiValue.value1;

  void onChanged(RadoiValue value) {
    setState(() => selectedValue = value);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Radio<RadoiValue>(
          value: RadoiValue.value1,
          groupValue: selectedValue,
          onChanged: (value) => onChanged(value!),
        ),
        Radio<RadoiValue>(
          value: RadoiValue.value2,
          groupValue: selectedValue,
          onChanged: (value) => onChanged(value!),
        ),
        Radio<RadoiValue>(
          value: RadoiValue.value3,
          groupValue: selectedValue,
          onChanged: (value) => onChanged(value!),
        ),
      ],
    );
  }
}
