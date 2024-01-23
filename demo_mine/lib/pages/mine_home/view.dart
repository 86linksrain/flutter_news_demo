/*
 * @Author: rain zwen@86links.com
 * @Date: 2024-01-20 11:49:44
 * @LastEditors: rain zwen@86links.com
 * @LastEditTime: 2024-01-23 12:04:24
 * @FilePath: /demo/demo_mine/lib/pages/mine_home/view.dart
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../mine_router.dart';
import 'index.dart';

class MineHomePage extends GetView<MineHomeController> {
  const MineHomePage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    return Center(
      child: Column(
        children: [
          TextButton(
            onPressed: () => Get.toNamed(MineRouter.ROUTE_MINE_PAGE1),
            child: Text('点击跳转'),
          ),
          TextButton(
            onPressed: () => Get.toNamed('/demo_auth/pages/auth_home'),
            child: Text('点击跳转登录'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MineHomeController>(
      autoRemove: false,
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text("mine_home")),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
