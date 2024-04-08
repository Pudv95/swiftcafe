import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String label;
  const CustomInputField({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration:   InputDecoration(
        label: Text(label,style:  Theme.of(context).textTheme.displaySmall),
        border: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white)
        )
      ),
    );
  }
}
