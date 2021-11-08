import 'package:flutter/material.dart';

class TextformWidget extends StatelessWidget {
  final String? hintText, labelText;
  final Widget? suffixIcon;
  const TextformWidget({Key? key, this.hintText, this.labelText, this.suffixIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: null,
      style: const TextStyle(color: Colors.black),
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        labelStyle: const TextStyle(color: Colors.grey),
        hintStyle: TextStyle(color: Colors.indigo.shade200),
        suffixIcon: suffixIcon,
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue)),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.indigo),
        ),
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.black),
          borderRadius: BorderRadius.circular(10),
        ),
      ), 
    );
  }
}
