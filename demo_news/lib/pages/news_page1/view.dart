/*
 * @Author: rain zwen@86links.com
 * @Date: 2024-01-20 11:33:16
 * @LastEditors: rain zwen@86links.com
 * @LastEditTime: 2024-01-23 14:27:19
 * @FilePath: /demo/demo_news/lib/pages/news_page1/view.dart
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
import 'package:flutter/material.dart';
import 'package:demo_common/common_module.dart';

import 'index.dart';

class NewsPage1Page extends GetView<NewsPage1Controller> {
  const NewsPage1Page({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    return Center(
      child: Text(controller.userName),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NewsPage1Controller>(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text("newspage1")),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
