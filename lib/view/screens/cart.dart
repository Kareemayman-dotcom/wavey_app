import 'package:flutter/material.dart';
import 'package:odcflutterapp1/model/global.dart';

import 'Tv_catalog.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (cart.isEmpty) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          elevation: 0,
          title: Text(
            "Cart Items",
          ),
          leading: GestureDetector(
              child: const Icon(Icons.arrow_back, color: Colors.white),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => TvCatalog()));
              }),
        ),
        body: Center(
          child: Text(
            "Your Cart is Empty",
          ),
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          elevation: 0,
          title: Text(
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
            child: ListView.separated(
              itemCount: cart.length,
              separatorBuilder: (BuildContext context, int index) {
                return Divider(
                  height: 10,
                  thickness: 1.5,
                  endIndent: 50,
                  indent: 50,
                  color: Colors.redAccent,
                );
              },
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 25,
                  ),
                  height: 150,
                  // color: Colors.blueAccent,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 70,
                        child: Image.network(cart[index].imageAddress),
                      ),
                      Column(
                        children: [
                          Text(" ${cart[index].name.substring(0, 20)}..."),
                          Text("qty:${cart[index].count}")
                        ],
                      ),
                    ],
                  ),
                );
                ;
              },
            ),
          ),
        ]),
      );
    }
  }
}
