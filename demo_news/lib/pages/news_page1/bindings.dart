import 'package:demo_common/common_module.dart';

import 'controller.dart';

class NewsPage1Binding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NewsPage1Controller>(() => NewsPage1Controller());
  }
}
