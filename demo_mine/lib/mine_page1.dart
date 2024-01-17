/*
 * @Author: rain zwen@86links.com
 * @Date: 2024-01-15 20:17:16
 * @LastEditors: rain zwen@86links.com
 * @LastEditTime: 2024-01-17 17:19:34
 * @FilePath: /demo/demo_mine/lib/mine_page1.dart
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
import 'package:demo_common/main_router.dart';
import 'package:flutter/material.dart';

class MinePage1 extends StatelessWidget {
  const MinePage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("我的详情"),
      ),
      body: Center(
        child: ListView(
          children: [
            Column(
              children: [
                Text('想跳转别的业务层次 避免模块耦合 就要考虑路由'),
                TextButton(
                  onPressed: () {
                    MainRouter.push('/demo_news/news_home', '这是传值');
                  },
                  child: Text(' 点击跳转'),
                ),
              ],
            ),
            const Divider(),
            TextButton(
              onPressed: () {
                MainRouter.push('/demo_common/getx_setting', null);
              },
              child: const Text('设置主题'),
            ),
          ],
        ),
      ),
    );
  }
}
