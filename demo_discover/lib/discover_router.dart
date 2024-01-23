/*
 * @Author: rain zwen@86links.com
 * @Date: 2024-01-15 20:13:23
 * @LastEditors: rain zwen@86links.com
 * @LastEditTime: 2024-01-20 12:13:05
 * @FilePath: /demo/demo_news/lib/news_router.dart
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
import 'package:demo_common/common_module.dart';
import 'package:demo_discover/discover_module.dart';
import 'package:demo_discover/pages/discover_page1/index.dart';
import 'package:demo_discover/pages/discover_home/index.dart';

class DiscoverRouter {
  static const ROUTE_DISCOVER_HOME = '/demo_discover/discover_home';
  static const ROUTE_DISCOVER_PAGE1 = '/demo_discover/discover_page1';

  // static Map<String, WidgetBuilder> routes = {
  //   ROUTE_DISCOVER_HOME: (context) => DiscoverHomePage(),
  //   ROUTE_DISCOVER_PAGE1: (context) => DiscoverPage1(),
  // };

  static final List<GetPage> discoverRoutesList = [
    GetPage(
      name: ROUTE_DISCOVER_HOME,
      page: () => const DiscoverHomePage(),
      binding: DiscoverHomeBinding(),
      // middlewares: [
      //   RouteWelcomeMiddleware(priority: 1),
      // ],
    ),
    GetPage(
      name: ROUTE_DISCOVER_PAGE1,
      page: () => const DiscoverPage1Page(),
      binding: DiscoverPage1Binding(),
      // middlewares: [
      //   RouteWelcomeMiddleware(priority: 1),
      // ],
    ),
  ];
}
