import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/shopC.dart';

class ShopItem extends StatelessWidget {
  final shopC = Get.find<ShopC>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(
          onPressed: () {
            shopC.quantitiy.value--;
            Get.find<ShopC>(tag: "total").total.value--;
          },
          icon: const Icon(Icons.remove),
        ),
        Obx(
          () => Text(
            "${shopC.quantitiy}",
            style: const TextStyle(fontSize: 25),
          ),
        ),
        IconButton(
          onPressed: () {
            shopC.quantitiy.value++;
            Get.find<ShopC>(tag: "total").total.value++;
          },
          icon: const Icon(Icons.add),
        ),
      ],
    );
  }
}
