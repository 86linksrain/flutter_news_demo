/*
 * @Author: rain zwen@86links.com
 * @Date: 2024-01-15 20:13:23
 * @LastEditors: rain zwen@86links.com
 * @LastEditTime: 2024-01-23 16:08:40
 * @FilePath: /demo/demo_news/lib/news_router.dart
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */

import 'package:demo_common/common_module.dart';
import 'package:demo_news/news_module.dart';
import 'pages/news_page1/index.dart';
import 'pages/news_page2/index.dart';

class NewsRouter {
  static const ROUTE_NEWS_HOME = '/demo_news/page/news_home';
  static const ROUTE_NEWS_PAGE1 = '/demo_news/page/news_page1';
  static const ROUTE_NEWS_PAGE2 = '/demo_news/page/news_page2';

  // static Map<String, WidgetBuilder> routes = {
  //   ROUTE_NEWS_HOME: (context) => NewsHomePage(),
  //   ROUTE_NEWS_PAGE1: (context) => NewsPage1(),
  // };

  static final List<GetPage> authRoutesList = [
    GetPage(
      name: ROUTE_NEWS_HOME,
      page: () => const NewsHomePage(),
      binding: NewsHomeBinding(),
      // middlewares: [
      //   RouteWelcomeMiddleware(priority: 1),
      // ],
    ),
    GetPage(
      name: ROUTE_NEWS_PAGE1,
      page: () => const NewsPage1Page(),
      binding: NewsPage1Binding(),
      // middlewares: [
      //   RouteAuthMiddleware(priority: 100),
      // ],
    ),
    GetPage(
      name: ROUTE_NEWS_PAGE2,
      page: () => const NewsPage2Page(),
      binding: NewsPage2Binding(),
      middlewares: [
        RouteAuthMiddleware(),
      ],
    ),
  ];
}
