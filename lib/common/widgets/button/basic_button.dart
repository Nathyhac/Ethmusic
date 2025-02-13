import 'package:flutter/material.dart';

class BasicButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  const BasicButton({required this.onPressed, required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onPressed, child: Text(title));
  }
}
