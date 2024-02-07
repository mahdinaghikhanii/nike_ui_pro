import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePages extends StatelessWidget {
  const HomePages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            backgroundColor: Colors.white,
            leadingWidth: 0,
            automaticallyImplyLeading: false,
            centerTitle: false,
            title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(CupertinoIcons.sidebar_left),
                  Image.asset(
                    "assets/logo.png",
                    width: 56,
                  ),
                  const Icon(CupertinoIcons.cart)
                ])),
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(height: 30),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 18),
            child: Text(
              "New Collection",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 18),
            child: Text(
              "Explore ,the new collection of sneakers",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 13,
                  color: Colors.grey),
            ),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 0),
              child: Image.asset("assets/2.png")),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                lenghtShowsItems("Lifestyle", "32"),
                const SizedBox(width: 30),
                lenghtShowsItems("Runing", "24", colorText: true),
                const SizedBox(width: 30),
                lenghtShowsItems("Tennis", "13", colorText: true)
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 35),
            width: MediaQuery.sizeOf(context).width,
            height: 220,
            child: ListView.builder(
                padding: const EdgeInsets.only(left: 15),
                itemCount: 2,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                      padding: const EdgeInsets.all(14),
                      margin: const EdgeInsets.only(right: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey.shade100),
                      height: 209,
                      width: 170,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star_outline,
                                      color: Colors.grey.shade600,
                                    ),
                                    const SizedBox(width: 6),
                                    Text("4.8",
                                        style: TextStyle(
                                            color: Colors.grey.shade600,
                                            fontWeight: FontWeight.w600))
                                  ],
                                ),
                                Icon(Icons.bookmark_outline,
                                    color: Colors.grey.shade600)
                              ],
                            ),
                            const SizedBox(height: 20),
                            Image.asset("assets/shoes.png"),
                            const SizedBox(height: 15),
                            Text("Nike Legend",
                                style: TextStyle(
                                    color: Colors.grey.shade600,
                                    fontWeight: FontWeight.w600)),
                            const SizedBox(height: 2),
                            Text("\$290.00",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.grey.shade900,
                                    fontWeight: FontWeight.w600))
                          ]));
                }),
          )
        ]));
  }
}

Widget lenghtShowsItems(String title, String items, {bool colorText = false}) {
  return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
    Text(
      title,
      style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
          color: colorText == false ? Colors.black : Colors.grey),
    ),
    Text(
      "$items item",
      style: TextStyle(color: colorText == false ? Colors.black : Colors.grey),
    )
  ]);
}
