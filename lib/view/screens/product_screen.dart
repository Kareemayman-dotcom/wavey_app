import 'package:flutter/material.dart';
import 'package:odcflutterapp1/model/global.dart';
import 'package:odcflutterapp1/view/screens/Tv_catalog.dart';

class ProductScreen extends StatelessWidget {
  int index;
  ProductScreen({
    Key? key,
    required this.index,
  }) : super(key: key);

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
              child: Icon(Icons.arrow_back, color: Colors.redAccent),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => TvCatalog()));
              }),
        ),
        body: Column(
          children: [
            Container(
              width: double.infinity,
              height: 350,
              color: Colors.green,
              child:
                  Image.network(tvs[index].imageAddress, fit: BoxFit.fitWidth),
            ),
            Container(
              width: 120,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(50),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Icon(
                        Icons.add,
                        color: Colors.red,
                      ),
                    ),
                  ),
                  Text(data)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
