/*
 * @Author: rain zwen@86links.com
 * @Date: 2024-01-15 20:13:23
 * @LastEditors: rain zwen@86links.com
 * @LastEditTime: 2024-01-20 12:10:05
 * @FilePath: /demo/demo_news/lib/news_router.dart
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
import 'package:demo_common/common_module.dart';
import 'package:demo_mine/pages/mine_home/index.dart';
import 'package:demo_mine/pages/mine_page1/index.dart';

class MineRouter {
  static const ROUTE_MINE_HOME = '/demo_mine/mine_home';
  static const ROUTE_MINE_PAGE1 = '/demo_mine/mine_page1';

  // static Map<String, WidgetBuilder> routes = {
  //   ROUTE_MINE_HOME: (context) => MineHomePage(),
  //   ROUTE_MINE_PAGE1: (context) => MinePage1Page(),
  // };

  static final List<GetPage> mineRoutesList = [
    GetPage(
      name: ROUTE_MINE_HOME,
      page: () => const MineHomePage(),
      binding: MineHomeBinding(),
      // middlewares: [
      //   RouteWelcomeMiddleware(priority: 1),
      // ],
    ),
    GetPage(
      name: ROUTE_MINE_PAGE1,
      page: () => const MinePage1Page(),
      binding: MinePage1Binding(),
      // middlewares: [
      //   RouteWelcomeMiddleware(priority: 1),
      // ],
    ),
  ];
}
