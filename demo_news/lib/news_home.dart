/*
 * @Author: rain zwen@86links.com
 * @Date: 2024-01-15 20:13:11
 * @LastEditors: rain zwen@86links.com
 * @LastEditTime: 2024-01-16 19:58:34
 * @FilePath: /demo/demo_news/lib/news_home.dart
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
import 'package:flutter/material.dart';
import 'package:demo_common/main_router.dart';
import 'news_router.dart';

class NewsHomePage extends StatefulWidget {
  @override
  NewsHomePageState createState() => NewsHomePageState();
}

class NewsHomePageState extends State<NewsHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("新闻"),
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
              onPressed: () =>
                  MainRouter.push(NewsRouter.ROUTE_NEWS_PAGE1, null),
              child: const Text('跳转'),
            ),
            const Text('路径，package:包名'),
            Image.asset('assets/images/alert_twocards.png',
                package: 'demo_common'),
            const Text('packages/包名/路径'),
            Image.asset('packages/demo_common/assets/images/alert_twocards.png')
          ],
        ),
      ),
    );
  }
}
