import 'package:get/get.dart';
import 'package:getx_bindings/bindings/countb.dart';
import 'package:getx_bindings/routes/route_name.dart';

import '../pages/count.dart';
import '../pages/home.dart';

class AppPages {
  static final page = [
    GetPage(
      name: RouteName.home,
      page: () => HomePage(),
    ),
    GetPage(
      name: RouteName.count,
      page: () => CountPage(),
      binding: CountB(),
    ),
  ];
}
