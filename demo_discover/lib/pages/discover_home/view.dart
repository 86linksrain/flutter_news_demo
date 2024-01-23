/*
 * @Author: rain zwen@86links.com
 * @Date: 2024-01-20 12:07:28
 * @LastEditors: rain zwen@86links.com
 * @LastEditTime: 2024-01-23 12:05:32
 * @FilePath: /demo/demo_discover/lib/pages/discover_home/view.dart
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../discover_router.dart';
import 'index.dart';

class DiscoverHomePage extends GetView<DiscoverHomeController> {
  const DiscoverHomePage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    return Center(
      child: Column(
        children: [
          TextButton(
            onPressed: () => Get.toNamed(DiscoverRouter.ROUTE_DISCOVER_PAGE1),
            child: Text('点击跳转'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DiscoverHomeController>(
      autoRemove: false,
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text("discover_home")),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
