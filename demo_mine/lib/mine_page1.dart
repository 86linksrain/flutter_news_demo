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
        child: Column(
          children: [
            Text('想跳转别的业务层次 避免模块耦合 就要考虑路由'),
            TextButton(
              onPressed: () {
                MainRouter.push('/news_home/news_home', '这是传值');
              },
              child: Text(' 点击跳转'),
            ),
          ],
        ),
      ),
    );
  }
}
