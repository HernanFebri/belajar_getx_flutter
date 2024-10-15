import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_dependency_getcreate/controllers/shopC.dart';
import 'package:getx_dependency_getcreate/pages/shop/widgets/shop_item.dart';

class ShopPage extends StatelessWidget {
  final shopC = Get.put(ShopC(), tag: "total");
  final quantityC = Get.create(() => ShopC());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("SHOP PAGE"),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) => ShopItem(),
      ),
      floatingActionButton: CircleAvatar(
        child: Obx(
          () => Text("${shopC.total.value}"),
        ),
      ),
    );
  }
}
