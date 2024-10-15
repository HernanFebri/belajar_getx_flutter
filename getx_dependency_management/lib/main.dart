import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
              onPressed: () => Get.to(() => CountPage()),
              icon: const Icon(Icons.keyboard_arrow_right))
        ],
      ),
      body: const Center(
        child: Text(
          "HOME PAGE",
          style: TextStyle(fontSize: 35),
        ),
      ),
    );
  }
}

class CountPage extends StatelessWidget {
  final c = Get.put(MyController(), permanent: true, tag: "tag 1");
  // final c = Get.find<MyController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () => Get.to(() => TextPage()),
              icon: const Icon(Icons.keyboard_arrow_right))
        ],
      ),
      body: Obx(
        () => Center(
            child: Text(
          "${c.count}",
          style: const TextStyle(fontSize: 35),
        )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => c.add(),
      ),
    );
  }
}

class TextPage extends StatelessWidget {
  final c = Get.find<MyController>(tag: "tag 1");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: TextField(
            controller: c.textC,
            decoration: const InputDecoration(border: OutlineInputBorder()),
          ),
        ),
      ),
    );
  }
}

class MyController extends GetxController {
  var count = 0.obs;

  var textC = TextEditingController();

  void add() => count++;
}
