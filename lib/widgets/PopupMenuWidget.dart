import 'package:flutter/material.dart';

class PopupMenuWidget extends StatefulWidget {
  const PopupMenuWidget({super.key});

  @override
  State<PopupMenuWidget> createState() => _PopupMenuWidgetState();
}

enum Values {
  value1,
  value2,
  value3,
}

class _PopupMenuWidgetState extends State<PopupMenuWidget> {
  Values selectedValue = Values.value1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(selectedValue.name),
        PopupMenuButton(
          itemBuilder: (context) {
            return Values.values
                .map(
                  (value) => PopupMenuItem(
                    value: value,
                    child: Text(value.name),
                  ),
                )
                .toList();
          },
          onSelected: (newValue) => setState(() {
            selectedValue = newValue;
          }),
        ),
      ],
    );
  }
}
