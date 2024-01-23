import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';

class MinePage1Page extends GetView<MinePage1Controller> {
  const MinePage1Page({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    return Center(
      child: ListView(
        children: [
          Column(
            children: [
              Text('想跳转别的业务层次 避免模块耦合 就要考虑路由'),
              TextButton(
                onPressed: () {
                  Get.toNamed('/demo_news/news_home', arguments: '这是传值');
                },
                child: Text(' 点击跳转'),
              ),
            ],
          ),
          const Divider(),
          TextButton(
            onPressed: () {
              Get.toNamed('/demo_common/pages/setting');
            },
            child: const Text('设置主题'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MinePage1Controller>(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text("mine_page1")),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
