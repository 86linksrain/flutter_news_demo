import 'package:get/get.dart';

import 'controller.dart';

class DiscoverPage1Binding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DiscoverPage1Controller>(() => DiscoverPage1Controller());
  }
}
