import 'package:flutter/material.dart';
import 'package:odcflutterapp1/model/tv.dart';

class TvCatalog extends StatelessWidget {
  List<Tv> flowers = [
    Tv(
        imageAddress:
            "https://m.media-amazon.com/images/I/61DOcUmc0EL._AC_SX679_.jpg",
        name: "Samsung 43 Inch Full HD Smart LED TV",
        price: 6818,
        brand: "Samsung",
        desc:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley"),
  ];
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
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              top: 15,
              right: 15,
            ),
            child: Image.network(
              "https://assets.webiconspng.com/uploads/2017/09/Sunflower-PNG-Image-54450.png",
            ),
          ),
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
          ),
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              // height: 140,
              // width: 100,
              padding: EdgeInsets.only(
                right: 10,
                left: 10,
                top: 10,
              ),
              decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  Image.network(
                    flowers[0].imageAddress,
                    fit: BoxFit.fitWidth,
                  ),
                  
                  // SizedBox(
                  //   height: 10,
                  // ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
