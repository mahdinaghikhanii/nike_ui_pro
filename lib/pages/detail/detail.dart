import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int numberSelected = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            automaticallyImplyLeading: false,
            leadingWidth: 0,
            title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      height: 24,
                      width: 24,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(width: 1, color: Colors.black)),
                      child: const Center(
                          child: Icon(CupertinoIcons.back, size: 18))),
                  const Text(
                    "Nike men shoes",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                        fontSize: 14),
                  ),
                  const Padding(
                      padding: EdgeInsets.only(right: 6),
                      child: Icon(CupertinoIcons.cart))
                ])),
        body: Column(children: [
          Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 30),
              child: Image.asset("assets/shoes.png")),
          Expanded(
            child: Container(
                decoration: const BoxDecoration(
                    color: Color(0xFF262C33),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
                width: MediaQuery.sizeOf(context).width,
                child: Column(children: [
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text(
                            "Nike Air Max 270",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                height: 0,
                                fontSize: 18),
                          ),
                          Row(
                            children: [
                              const Text(
                                "men shoes",
                                style: TextStyle(color: Color(0xFF9CA0AF)),
                              ),
                              const Spacer(),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star_outline,
                                    color: Colors.grey.shade500,
                                  ),
                                  const SizedBox(width: 4),
                                  Text("4.8",
                                      style: TextStyle(
                                          color: Colors.grey.shade500,
                                          fontWeight: FontWeight.w600))
                                ],
                              ),
                              const SizedBox(width: 15),
                              Icon(
                                Icons.chat,
                                color: Colors.grey.shade500,
                              ),
                              const SizedBox(width: 15),
                              Icon(Icons.bookmark_outline,
                                  color: Colors.grey.shade500)
                            ],
                          )
                        ]),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 8, left: 20),
                    child: Text(
                      "the nike free metcon 3 combines nike free flexibility around the forefoot with metcon stability in the heel to help you get the most out of your training session",
                      style: TextStyle(color: Color(0xFF9CA0AF)),
                    ),
                  ),
                  sizeShoes(context),
                  colorItems(),
                  Container(
                      margin:
                          const EdgeInsets.only(left: 20, right: 20, top: 10),
                      width: MediaQuery.sizeOf(context).width,
                      height: 1,
                      color: Colors.grey.shade700),
                  Padding(
                      padding: EdgeInsets.only(left: 20, top: 16),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Price :",
                                      style: TextStyle(
                                          color: Color(0xFF9CA0AF),
                                          fontWeight: FontWeight.w500)),
                                  Text("\$290.00",
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold))
                                ]),
                            Container(
                                margin: EdgeInsets.only(right: 20),
                                width: 200,
                                height: 50,
                                decoration: BoxDecoration(
                                    color: Color(0xFFFF7269),
                                    borderRadius: BorderRadius.circular(15)),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        CupertinoIcons.cart,
                                        color: Colors.white,
                                      ),
                                      SizedBox(width: 10),
                                      Text(
                                        "Add To Cart",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600),
                                      )
                                    ]))
                          ]))
                ])),
          )
        ]));
  }

  Widget sizeShoes(context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 20, top: 18, bottom: 15),
            child: Text(
              "Size :",
              style:
                  TextStyle(fontWeight: FontWeight.w400, color: Colors.white),
            ),
          ),
          SizedBox(
              width: MediaQuery.sizeOf(context).width,
              height: 50,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: number.length,
                  padding: const EdgeInsets.only(left: 20),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        setState(() {
                          numberSelected = index;
                        });
                      },
                      child: Container(
                        margin: const EdgeInsets.only(right: 14),
                        height: 42,
                        width: 54,
                        decoration: BoxDecoration(
                            color: numberSelected == index
                                ? Colors.white
                                : const Color(0xFF383C47),
                            borderRadius: BorderRadius.circular(8)),
                        child: Center(
                          child: Text(
                            number[index].toString(),
                            style: TextStyle(
                                color: numberSelected == index
                                    ? Colors.black
                                    : Colors.white54,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    );
                  }))
        ]);
  }
}

Widget colorItems() {
  return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
            padding: const EdgeInsets.only(left: 20, top: 22, bottom: 15),
            child: Row(
              children: [
                const Text(
                  "Colors :",
                  style: TextStyle(
                      fontWeight: FontWeight.w400, color: Colors.white),
                ),
                const SizedBox(width: 10),
                Container(
                  width: 28,
                  margin: const EdgeInsets.only(right: 10),
                  height: 28,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.grey),
                ),
                Container(
                  width: 28,
                  margin: const EdgeInsets.only(right: 10),
                  height: 28,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.red),
                ),
                Container(
                  width: 28,
                  margin: const EdgeInsets.only(right: 10),
                  height: 28,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.yellow),
                )
              ],
            )),
      ]);
}

List<int> number = [40, 41, 42, 43, 45];
