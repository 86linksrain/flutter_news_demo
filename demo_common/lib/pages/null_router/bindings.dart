import 'package:get/get.dart';

import 'controller.dart';

class NullRouterBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NullRouterController>(() => NullRouterController());
  }
}
