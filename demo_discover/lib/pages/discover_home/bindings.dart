import 'package:get/get.dart';

import 'controller.dart';

class DiscoverHomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DiscoverHomeController>(() => DiscoverHomeController());
  }
}
