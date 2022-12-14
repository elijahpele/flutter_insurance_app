import 'package:flutter/material.dart';

class UmbrellaText extends StatelessWidget {
  const UmbrellaText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Umbrella",
      style: TextStyle(
        color: Colors.red,
        fontWeight: FontWeight.w900,
      ),
    );
  }
}