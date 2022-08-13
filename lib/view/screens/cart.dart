import 'package:flutter/material.dart';

import 'package:odcflutterapp1/model/global.dart';
import 'package:odcflutterapp1/model/tv.dart';

import 'Tv_catalog.dart';

class CartScreen extends StatelessWidget {
  double totalOrder = 0;
  CartScreen({
    Key? key,
  }) {
    countTotal();
  }
  void countTotal() {
    for (Tv tv in cart) {
      totalOrder += tv.totalPrice!;
    }
  }

  @override
  Widget build(BuildContext context) {
    if (cart.isEmpty) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          elevation: 0,
          title: const Text(
            "Cart Items",
          ),
          leading: GestureDetector(
              child: const Icon(Icons.arrow_back, color: Colors.white),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => TvCatalog()));
              }),
        ),
        body: const Center(
          child: const Text(
            "Your Cart is Empty",
          ),
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          elevation: 0,
          title: const Text(
            "Cart Items",
          ),
          leading: GestureDetector(
              child: const Icon(Icons.arrow_back, color: Colors.white),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => TvCatalog()));
              }),
        ),
        body: Column(children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.8,
            child: Scrollbar(
              radius: Radius.circular(50),
              child: ListView.separated(
                itemCount: cart.length,
                separatorBuilder: (BuildContext context, int index) {
                  return const Divider(
                    height: 10,
                    thickness: 1.5,
                    endIndent: 50,
                    indent: 50,
                    color: Colors.redAccent,
                  );
                },
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 25,
                    ),
                    height: 150,
                    // color: Colors.blueAccent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 70,
                              child: Image.network(cart[index].imageAddress),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Flexible(child: Text("${cart[index].name}")),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("qty:${cart[index].count}"),
                            const SizedBox(
                              width: 20,
                            ),
                            Row(
                              children: [
                                const Text("\$",
                                    style: TextStyle(color: Colors.redAccent)),
                                Text("${cart[index].price}"),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
          TextButton(onPressed: () {}, child: Text("$totalOrder"))
        ]),
      );
    }
  }
}
