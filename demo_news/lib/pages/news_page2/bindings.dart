import 'package:get/get.dart';

import 'controller.dart';

class NewsPage2Binding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NewsPage2Controller>(() => NewsPage2Controller());
  }
}
