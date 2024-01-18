/*
 * @Author: rain zwen@86links.com
 * @Date: 2024-01-15 20:12:30
 * @LastEditors: rain zwen@86links.com
 * @LastEditTime: 2024-01-17 20:26:28
 * @FilePath: /demo/lib/main_router.dart
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
// import 'package:demo_common/common_module.dart';
import 'package:demo_common/null_router.dart';
import 'package:flutter/material.dart';

class MainRouter {
  // 全局NavigatorState
  GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  // 单例
  factory MainRouter() => _sharedInstance();

  static MainRouter? _instance;

  MainRouter._internal();

  static MainRouter _sharedInstance() {
    _instance ??= MainRouter._internal();
    return _instance!;
  }

  // 保存所有routes
  Map<String, WidgetBuilder> routes = {};

  // 拦截器
  // final RouteFactory generateRoute = (settings) {
  //   // 路由拦截器
  //    return MaterialPageRoute(builder: (ctx) {
  //     return NullRouter();
  //   });
  // };
  final RouteFactory nullRoute = (settings) {
    print('undefined route');
    return MaterialPageRoute(builder: (ctx) {
      return NullRouter();
    });
  };

  // 初始化routes
  void initRoutes(List<Map<String, WidgetBuilder>> routeList) {
    routes = {};
    for (var route in routeList) {
      routes.addAll(route);
    }
    print('初始化routes完毕:$routes');
  }

  // 跳转
  static push(String name, Object? arguments) {
    MainRouter()
        .navigatorKey
        .currentState
        ?.pushNamed(name, arguments: arguments);
    print('跳转$name参数$arguments');
  }

  // 返回
  static pop([Object? result]) {
    MainRouter().navigatorKey.currentState?.pop(result);
    print('返回$result');
  }
}
