/*
 * @Author: rain zwen@86links.com
 * @Date: 2024-01-23 15:51:04
 * @LastEditors: rain zwen@86links.com
 * @LastEditTime: 2024-01-23 16:12:18
 * @FilePath: /demo/demo_common/lib/middlewares/router_auth.dart
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */

import 'package:demo_common/common_module.dart';
import 'package:demo_common/store/user.dart';
import 'package:flutter/material.dart';

/// 检查是否登录
class RouteAuthMiddleware extends GetMiddleware {

  RouteAuthMiddleware();

  @override
  RouteSettings? redirect(String? route) {
    if (UserStore.to.isLogin ||
        route == '/demo_auth/pages/auth_home' ||
        route == '/demo_auth/pages/register') {
      return null;
    } else {
      Future.delayed(
          const Duration(seconds: 1), () => Get.snackbar("提示", "登录过期,请重新登录"));
      return const RouteSettings(name: '/demo_auth/pages/auth_home');
    }
  }
}
