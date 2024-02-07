import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Image.asset('assets/logo.png'),
        ),
        backgroundColor: Colors.white,
        body: Column(children: []));
  }
}
