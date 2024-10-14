import 'package:flutter/material.dart';

class Profile_page extends StatelessWidget {
  const Profile_page({super.key});

  get responsive => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: responsive,
        width: responsive,
        color: Colors.cyan,
      ),
    );
  }
}
