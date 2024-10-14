import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  get responsive => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: responsive,
        width: responsive,
        color:
        Colors.green,
      ),
    );
  }
}
