import 'package:get/get.dart';

import 'controller.dart';

class AuthHomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthHomeController>(() => AuthHomeController());
  }
}
