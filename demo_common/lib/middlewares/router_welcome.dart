/*
 * @Author: rain zwen@86links.com
 * @Date: 2024-01-23 15:51:17
 * @LastEditors: rain zwen@86links.com
 * @LastEditTime: 2024-01-23 16:03:08
 * @FilePath: /demo/demo_common/lib/middlewares/router_welcome.dart
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
import 'package:demo_common/common_module.dart';
import 'package:demo_common/store/user.dart';
import 'package:flutter/material.dart';


class RouteWelcomeMiddleware extends GetMiddleware {
  // priority 数字小优先级高
  @override
  int? priority = 0;

  RouteWelcomeMiddleware({required this.priority});

  @override
  RouteSettings? redirect(String? route) {
    if (UserStore.to.isLogin == true) {
      return const RouteSettings(name: '/demo/home');
    } else {
      return const RouteSettings(name: '/demo_auth/pages/auth_home');
    }
  }
}
