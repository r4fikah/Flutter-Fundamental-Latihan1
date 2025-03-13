import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final String label;

  const TextFieldWidget({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        obscureText: false,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          labelText: label,
          hintText: 'Masukkan $label',
        ),
      ),
    );
  }
}
