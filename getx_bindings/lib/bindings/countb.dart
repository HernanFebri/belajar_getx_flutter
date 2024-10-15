import 'package:get/get.dart';

import '../controllers/count.dart';

class CountB implements Bindings {
  @override
  void dependencies() {
    Get.put(CountC());
  }
}
