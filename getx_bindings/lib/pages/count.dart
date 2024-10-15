import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/count.dart';

class CountPage extends StatelessWidget {
  final countC = Get.find<CountC>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "COUNT PAGE",
        ),
      ),
      body: Center(
        child: Obx(
          () => Text(
            "${countC.count}",
            style: const TextStyle(fontSize: 35),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => countC.add(),
        child: const Icon(Icons.add),
      ),
    );
  }
}
