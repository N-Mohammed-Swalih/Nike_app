import 'package:flutter/material.dart';
import 'package:sneakers_app/pages/intro_page.dart';

void main() {
  runApp(
      const MaterialApp(debugShowCheckedModeBanner: false, home: IntroPage()));
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
