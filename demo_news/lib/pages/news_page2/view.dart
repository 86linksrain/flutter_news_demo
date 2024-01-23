/*
 * @Author: rain zwen@86links.com
 * @Date: 2024-01-20 11:33:25
 * @LastEditors: rain zwen@86links.com
 * @LastEditTime: 2024-01-20 11:44:11
 * @FilePath: /demo/demo_news/lib/pages/news_page2/view.dart
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
import 'package:demo_common/common_module.dart';
import 'package:flutter/material.dart';

import 'index.dart';

class NewsPage2Page extends GetView<NewsPage2Controller> {
  const NewsPage2Page({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    return Center(
      child: Column(
        children: [
          TextButton(
            onPressed: () => Get.toNamed('klklk'),
            child: Text('跳转错误界面'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NewsPage2Controller>(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text("news_page2")),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
