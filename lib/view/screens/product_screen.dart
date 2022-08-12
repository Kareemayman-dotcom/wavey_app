import 'package:flutter/material.dart';
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
      ),
    );
  }
}
