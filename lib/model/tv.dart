import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:odcflutterapp1/controller/counter_provider.dart';

class Tv {
  String imageAddress;
  String name;
  double price;
  String brand;
  String desc;
  int? count;
  double? totalPrice;
  Tv({
    required this.imageAddress,
    required this.name,
    required this.price,
    required this.brand,
    required this.desc,
  });
}
