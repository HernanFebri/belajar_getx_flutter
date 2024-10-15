import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_bindings/routes/route_name.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Center(child: Text("HOME PAGE")),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () => Get.toNamed(RouteName.count),
            child: const Text("NEXT >>>")),
      ),
    );
  }
}
