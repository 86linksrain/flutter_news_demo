/*
 * @Author: rain zwen@86links.com
 * @Date: 2024-01-15 20:02:42
 * @LastEditors: rain zwen@86links.com
 * @LastEditTime: 2024-01-20 15:50:28
 * @FilePath: /demo/lib/main.dart
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
import 'package:demo/demo_router.dart';
import 'package:demo/global.dart';

import 'package:flutter/material.dart';
import 'package:demo_common/common_module.dart';
import 'package:demo_news/news_module.dart';
import 'package:demo_discover/discover_module.dart';
import 'package:demo_mine/mine_module.dart';
import 'package:demo_auth/auth_module.dart';

void main() async {
  await Global.init();
  // 注册routes
  // MainRouter().initRoutes([
  //   NewsRouter.routes,
  //   DiscoverRouter.routes,
  //   MineRouter.routes,
  //   CommonRouter.routes,
  // ]);
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
      // navigatorKey: MainRouter().navigatorKey,
      // routes: MainRouter().routes,
      getPages: AuthRouter.authRoutesList +
          NewsRouter.authRoutesList +
          MineRouter.mineRoutesList +
          DiscoverRouter.discoverRoutesList +
          CommonRouter.commonRoutesList +
          DemoRouter.demoRoutesList,
      initialRoute: DemoRouter.ROUTE_DEMO_HOME,
      // initialRoute: DemoRouter.ROUTE_DEMO_HOME1,

      unknownRoute: GetPage(
          name: CommonRouter.ROUTE_COMMON_NULL_ROUTER,
          page: () => const NullRouterPage(),
          binding: NullRouterBinding()),
      // onGenerateRoute: MainRouter().generateRoute,
      // home: const AuthHomePage(),
    );
  }
}
