import 'package:flutter/material.dart';
import 'package:odcflutterapp1/model/global.dart';
import 'package:odcflutterapp1/model/tv.dart';
import 'package:odcflutterapp1/view/screens/login.dart';
import 'package:odcflutterapp1/view/screens/product_screen.dart';

class TvCatalog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,

        leading: Container(
          padding: const EdgeInsets.only(
            top: 15,
            left: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text("Good Morning!",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 13,
                  )),
              Text(
                "Flowers items",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
        leadingWidth: 150,
        // flexibleSpace: ,
        // toolbarOpacity: 2,
        actions: const [
          Padding(
              padding: EdgeInsets.only(
                top: 15,
                right: 15,
              ),
              child: Icon(
                Icons.shopping_cart,
                color: Colors.grey,
              )),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            childAspectRatio: 0.7,
          ),
          itemCount: tvs.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ProductScreen(index: index)));
              },
              child: Container(
                // height: 140,
                // width: 100,
                padding: const EdgeInsets.only(
                  top: 10,
                  right: 10,
                  left: 10,
                ),
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 120,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          )),
                      child: Image.network(
                        tvs[index].imageAddress,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      "${tvs[index].name.substring(0, 15)}...",
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      "${tvs[index].brand}",
                      style: const TextStyle(
                        // fontWeight: FontWeight.w600,
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Row(
                      children: [
                        Text(
                          "\$",
                          style: TextStyle(
                            color: Color.fromARGB(255, 255, 17, 0),
                          ),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text(
                          tvs[index].price.toString(),
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                    // SizedBox(
                    //   height: 10,
                    // ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
