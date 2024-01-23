import 'package:demo/tabbar/index.dart';
import 'package:demo_common/common_module.dart';

class DemoRouter {
  static const ROUTE_DEMO_HOME = '/demo/home';

  // static Map<String, WidgetBuilder> routes = {
  //   ROUTE_COMMON_SETTING: (context) => GetxSetting(),
  // };
  static final List<GetPage> demoRoutesList = [
    GetPage(
        name: ROUTE_DEMO_HOME,
        page: () => const TabbarPage(),
        binding: TabbarBinding())
  ];
}
