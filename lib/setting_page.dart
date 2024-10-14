import 'package:flutter/material.dart';

class settings_page extends StatelessWidget {
  const settings_page({super.key});

  get responsive => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: responsive,
        width: responsive,
        color: Colors.purple,
      ),
    );
  }
}
