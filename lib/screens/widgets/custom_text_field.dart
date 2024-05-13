import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String text;
  final TextEditingController controller;
  double? fieldWidth;

   CustomTextField({
    super.key, required this.text, required this.controller, this.fieldWidth
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: fieldWidth,
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
            labelText: text,
            hintText: text,
        ),
      ),
    );
  }
}

