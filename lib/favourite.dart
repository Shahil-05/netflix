import 'package:flutter/material.dart';

class Favourite extends StatelessWidget {
  const Favourite({super.key});

  get responsive => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: responsive,
        width: responsive,
        color: Colors.purple[200],
      ),
    );
  }
}
