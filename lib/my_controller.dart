import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/route_manager.dart';
import 'package:flutter/material.dart';

class MyController extends GetxController {
  var books = 0;

  var pens = 0;

  int get sum => books + pens;

  void increment() {
    books++;
    update();
  }

  void decrement() {
    if (books > 0) {
      books--;
      update();
    } else {
      Get.snackbar(
        'Buy Books',
        'Can not be less than zero',
        icon: const Icon(Icons.alarm),
        barBlur: 20,
        isDismissible: true,
        duration: const Duration(seconds: 2),
      );
    }
  }

  void incrementPens() {
    pens++;
    update();
  }

  void decrementPens() {
    if (pens > 0) {
      pens--;
      update();
    } else {
      Get.snackbar(
        'Buy Pens',
        'Can not be less than zero',
        icon: const Icon(Icons.alarm),
        barBlur: 20,
        isDismissible: true,
        duration: const Duration(seconds: 2),
      );
    }
  }
}
