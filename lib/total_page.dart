import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';
import 'package:simple_flutter_cart/my_cart.dart';
import 'package:simple_flutter_cart/my_controller.dart';

class TotalPage extends StatelessWidget {
  TotalPage({super.key});
  MyController c = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Total items: ${c.sum}',
              style: TextStyle(
                fontSize: 30,
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 10),
            Container(
              width: 180,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.blue,
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  backgroundColor: Colors.blue.shade500,
                  // enabledMouseCursor: MouseCursor.uncontrolled,
                ),
                onPressed: () {
                  Get.to(() => const MyCart());
                },
                child: const Text(
                  'Go Back',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
