import 'package:get/get.dart';

import 'controller.dart';

class MinePage1Binding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MinePage1Controller>(() => MinePage1Controller());
  }
}
