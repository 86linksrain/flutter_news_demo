import 'package:demo_common/common_module.dart';
import 'package:flutter/material.dart';

class NewsPage1 extends StatelessWidget {
  const NewsPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("新闻详情"),
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
              onPressed: () => MainRouter.push('klklk', null),
              child: Text('跳转'),
            ),
          ],
        ),
      ),
    );
  }
}
