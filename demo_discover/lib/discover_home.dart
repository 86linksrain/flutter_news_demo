/*
 * @Author: rain zwen@86links.com
 * @Date: 2024-01-15 20:23:44
 * @LastEditors: rain zwen@86links.com
 * @LastEditTime: 2024-01-15 20:30:18
 * @FilePath: /demo/demo_discover/lib/discover_home.dart
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
import 'package:flutter/material.dart';
import 'package:demo_common/main_router.dart';
import 'discover_router.dart';

class DiscoverHomePage extends StatefulWidget {
  @override
  DiscoverHomePageState createState() => DiscoverHomePageState();
}

class DiscoverHomePageState extends State<DiscoverHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("发现"),
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
              onPressed: () =>
                  MainRouter.push(DiscoverRouter.ROUTE_DISCOVER_PAGE1, null),
              child: Text('点击跳转'),
            ),
          ],
        ),
      ),
    );
  }
}
