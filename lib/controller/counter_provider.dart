import 'package:flutter/cupertino.dart';

class CounterProvider extends ChangeNotifier {
  static int counter = 0;
  void increment() {
    counter++;
    print(counter);
    notifyListeners();
  }

  void decrement() {
    counter--;
    print(counter);
    notifyListeners();
  }
}
