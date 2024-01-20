/*
 * @Author: rain zwen@86links.com
 * @Date: 2024-01-17 19:10:58
 * @LastEditors: rain zwen@86links.com
 * @LastEditTime: 2024-01-20 14:46:13
 * @FilePath: /demo/demo_auth/lib/main.dart
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
// import 'package:demo_auth/pages/auth_home/index.dart';
import 'package:demo_common/common_module.dart';
import 'package:flutter/material.dart';

// import 'pages/getxeee/index.dart';
import 'routers/auth_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      initialRoute: AuthRouter.ROUTE_AUTH_HOME,
      getPages: AuthRouter.authRoutesList,
    );
  }
}
