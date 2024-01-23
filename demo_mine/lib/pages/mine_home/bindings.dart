import 'package:get/get.dart';

import 'controller.dart';

class MineHomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MineHomeController>(() => MineHomeController());
  }
}
