import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_dependency_getcreate/pages/shop/shop.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Center(child: Text("HOME PAGE")),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Home Page"),
            OutlinedButton(
                onPressed: () => Get.to(() => ShopPage()),
                child: const Text("SHOP >>>"))
          ],
        ),
      ),
    );
  }
}
