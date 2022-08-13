import 'package:flutter/material.dart';
import 'package:odcflutterapp1/controller/counter_provider.dart';
import 'package:odcflutterapp1/model/global.dart';
import 'package:odcflutterapp1/model/tv.dart';
import 'package:odcflutterapp1/view/screens/Tv_catalog.dart';
import 'package:provider/provider.dart';

class ProductScreen extends StatelessWidget {
  int index;
  ProductScreen({
    Key? key,
    required this.index,
  }) {
    resetCounter();
  }
  void resetCounter() {
    CounterProvider.counter = 1;
    tvs[index].count = 1;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => TvCatalog()));
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: GestureDetector(
              child: const Icon(Icons.arrow_back, color: Colors.redAccent),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => TvCatalog()));
              }),
        ),
        body: Scrollbar(
          radius: Radius.circular(50),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  alignment: Alignment.topCenter,
                  width: double.infinity,
                  height: 300,
                  // color: Colors.green,
                  child: Image.network(tvs[index].imageAddress,
                      fit: BoxFit.fitWidth),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  width: 120,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey.withAlpha(50),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Provider.of<CounterProvider>(context, listen: false)
                              .decrement();
                          tvs[index].count = CounterProvider.counter;
                          print(tvs[index].count);
                          // Provider.of<CounterProvider>(context, listen: false)
                          // .decrement();
                        },
                        child: Container(
                          padding: const EdgeInsets.only(bottom: 25),
                          width: 38,
                          height: 38,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          // alignment: Alignment.center,
                          child: const Icon(
                            Icons.minimize,
                            color: Colors.red,
                          ),
                        ),
                      ),
                      Consumer<CounterProvider>(
                        builder: (context, provider, child) {
                          return Text(
                            CounterProvider.counter.toString(),
                            style: const TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          );
                        },
                      ),
                      GestureDetector(
                        onTap: () {
                          Provider.of<CounterProvider>(context, listen: false)
                              .increment();
                          tvs[index].count = CounterProvider.counter;
                          print("qty:${tvs[index].count}");

                          // Provider.of<CounterProvider>(context, listen: false)
                          // .decrement();
                        },
                        child: Container(
                          width: 38,
                          height: 38,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          // alignment: Alignment.center,
                          child: const Icon(
                            Icons.add,
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 40,
                    right: 20,
                    left: 20,
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 272,
                            child: Wrap(
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  tvs[index].name,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 25,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              const Text("\$",
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                  )),
                              Text(
                                "${tvs[index].price}",
                                style: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        tvs[index].desc,
                        style: TextStyle(color: Colors.grey[400], height: 2),
                      ),
                      // Text(tvs[index].desc),
                      // Text(tvs[index].desc),
                      // Text(tvs[index].desc),
                      SizedBox(
                        height: 50,
                      ),
                      GestureDetector(
                        onTap: () {
                          tvs[index].totalPrice =
                              CounterProvider.counter * tvs[index].price;
                          // bool found = false;
                          // for (int i = 0; i > tvs.length; i++) {
                          //   for (int j = 0; j > cart.length; j++) {
                          //     if (tvs[i].name == cart[j].name) {
                          //       found = true;
                          //     }
                          //     if (found) {
                          //       tvs[index].count =
                          //           tvs[index].count! + CounterProvider.counter;
                          //     } else {
                          //     }
                          cart.add(tvs[index]);

                          // SnackBar(content: Text("Product Add"));
                          print(cart[index].totalPrice);
                        },
                        child: Container(
                          width: 180,
                          height: 60,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 250, 37, 101),
                            borderRadius: BorderRadius.circular(35),
                          ),
                          //   borderRadius: BorderRadius.circular(40),
                          // ),

                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                "Add To Cart ",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              Icon(
                                Icons.shopping_cart,
                                color: Colors.white,
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
