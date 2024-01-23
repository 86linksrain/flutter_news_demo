/*
 * @Author: rain zwen@86links.com
 * @Date: 2024-01-17 17:29:38
 * @LastEditors: rain zwen@86links.com
 * @LastEditTime: 2024-01-20 14:09:58
 * @FilePath: /demo/demo_common/lib/common_router.dart
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
import 'package:demo_common/common_module.dart';
import 'pages/setting/index.dart';

class CommonRouter {
  static const ROUTE_COMMON_SETTING = '/demo_common/pages/setting';
  static const ROUTE_COMMON_NULL_ROUTER = '/demo_common/pages/null_router';

  // static Map<String, WidgetBuilder> routes = {
  //   ROUTE_COMMON_SETTING: (context) => GetxSetting(),
  // };
  static final List<GetPage> commonRoutesList = [
    GetPage(
      name: ROUTE_COMMON_SETTING,
      page: () => const SettingPage(),
      binding: SettingBinding(),
      // middlewares: [
      //   RouteWelcomeMiddleware(priority: 1),
      // ],
    ),
    GetPage(
      name: ROUTE_COMMON_NULL_ROUTER,
      page: () => const NullRouterPage(),
      binding: NullRouterBinding(),
      // middlewares: [
      //   RouteWelcomeMiddleware(priority: 1),
      // ],
    ),
  ];

  
}
