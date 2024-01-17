import 'package:flutter/material.dart';
import 'main_home.dart';
import 'package:demo_common/common_module.dart';
import 'package:demo_news/news_module.dart';
import 'package:demo_discover/discover_module.dart';
import 'package:demo_mine/mine_module.dart';
import 'package:get/get.dart';

void main() {
  // 注册routes
  MainRouter().initRoutes(
      [NewsRouter.routes, DiscoverRouter.routes, MineRouter.routes]);
  // 启动
  runApp(const MyApp());
  // 建议用get但不建议整体用GetMaterialApp
  // runApp(const GetMaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: Themes.park,
      navigatorKey: MainRouter().navigatorKey,
      routes: MainRouter().routes,
      onUnknownRoute: MainRouter().nullRoute,
      onGenerateRoute: MainRouter().generateRoute,
      home: HomePage(),
    );
  }
}
