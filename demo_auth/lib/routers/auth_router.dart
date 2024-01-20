/*
 * @Author: rain zwen@86links.com
 * @Date: 2024-01-18 15:49:47
 * @LastEditors: rain zwen@86links.com
 * @LastEditTime: 2024-01-20 16:01:12
 * @FilePath: /demo/demo_auth/lib/routers/auth_router.dart
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */

// import 'package:demo//null_router.dart';

import 'package:demo_common/common_module.dart';

import '../pages/auth_home/index.dart';
import '../pages/register/index.dart';

class AuthRouter {
  static const ROUTE_AUTH_HOME = '/demo_auth/pages/auth_home';
  static const ROUTE_AUTH_REGISTER = '/demo_auth/pages/register';

  static final List<GetPage> authRoutesList = [
    GetPage(
      name: ROUTE_AUTH_HOME,
      page: () => const AuthHomePage(),
      binding: AuthHomeBinding(),
      // middlewares: [
      //   RouteWelcomeMiddleware(priority: 1),
      // ],
    ),
    GetPage(
      name: ROUTE_AUTH_REGISTER,
      page: () => const RegisterPage(),
      binding: RegisterBinding(),
    ),
  ];
}
