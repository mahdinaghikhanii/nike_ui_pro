import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:nike/pages/home/home.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: false,
          title: Padding(
            padding: const EdgeInsets.only(left: 20, bottom: 20),
            child: Image.asset(
              'assets/logo.png',
              width: 70,
            ),
          ),
        ),
        bottomNavigationBar: SafeArea(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 60),
            width: MediaQuery.sizeOf(context).width,
            height: 54,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const HomePages())),
                child: const Center(
                  child: Text(
                    "Get Started",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                )),
          ),
        ),
        backgroundColor: Colors.white,
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: FadeInRight(
                  delay: const Duration(microseconds: 300),
                  duration: const Duration(seconds: 3),
                  child: Image.asset(
                    "assets/splash.png",
                    fit: BoxFit.cover,
                    height: 390,
                    width: 390,
                  ),
                ),
              ),
              const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Text(
                    "Summer\nCollections",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 40, height: 0),
                  )),
              const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Text(
                    "2024",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                        color: Colors.grey),
                  )),
              const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 4),
                  child: Text(
                    "His ability to control his movement keeps defenders guessing",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.grey),
                  )),
            ]));
  }
}
