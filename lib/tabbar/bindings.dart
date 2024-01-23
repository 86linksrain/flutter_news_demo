import 'package:demo_common/common_module.dart';
import 'package:demo_discover/pages/discover_home/controller.dart';
import 'package:demo_mine/pages/mine_home/controller.dart';
import 'package:demo_news/pages/news_home/controller.dart';

import 'controller.dart';

class TabbarBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TabbarController>(() => TabbarController());

    Get.lazyPut<NewsHomeController>(() => NewsHomeController());
    Get.lazyPut<DiscoverHomeController>(() => DiscoverHomeController());
    Get.lazyPut<MineHomeController>(() => MineHomeController());
  }
}
