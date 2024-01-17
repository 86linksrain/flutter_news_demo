import 'package:demo_common/common_module.dart';
import 'package:flutter/material.dart';

class NewsPage2 extends StatelessWidget {
  const NewsPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("page2"),
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
              onPressed: () => MainRouter.push('klklk', null),
              child: Text('跳转错误界面'),
            ),
          ],
        ),
      ),
    );
  }
}
