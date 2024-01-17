/*
 * @Author: rain zwen@86links.com
 * @Date: 2024-01-15 20:13:23
 * @LastEditors: rain zwen@86links.com
 * @LastEditTime: 2024-01-17 17:33:16
 * @FilePath: /demo/demo_news/lib/news_router.dart
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
import 'package:flutter/cupertino.dart';
import 'news_home.dart';
import 'news_page1.dart';

class NewsRouter {
  static const ROUTE_NEWS_HOME = '/demo_news/news_home';
  static const ROUTE_NEWS_PAGE1 = '/demo_news/news_page1';

  static Map<String, WidgetBuilder> routes = {
    ROUTE_NEWS_HOME: (context) => NewsHomePage(),
    ROUTE_NEWS_PAGE1: (context) => NewsPage1(),
  };
}
