import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:getx_bindings/pages/home.dart';
import 'package:getx_bindings/routes/app_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: HomePage(),
      getPages: AppPages.page,
    );
  }
}
