import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData.light(useMaterial3: false),
      home: Scaffold(
        appBar: AppBar(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Get.changeTheme(
              Get.isDarkMode
                  ? ThemeData.light(useMaterial3: false)
                  : ThemeData.dark(useMaterial3: false),
            );
          },
        ),
      ),
    );
  }
}
