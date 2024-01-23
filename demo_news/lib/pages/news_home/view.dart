import 'package:demo_common/store/user.dart';
import 'package:flutter/material.dart';
import 'package:demo_common/common_module.dart';

import '../../news_router.dart';
import 'index.dart';

class NewsHomePage extends GetView<NewsHomeController> {
  const NewsHomePage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    return Center(
      child: Column(
        children: [
          TextButton(
            onPressed: () => Get.toNamed(NewsRouter.ROUTE_NEWS_PAGE1),
            child: const Text('跳转page1'),
          ),
          TextButton(
            onPressed: () => Get.toNamed(NewsRouter.ROUTE_NEWS_PAGE2),
            child: const Text('跳转page2'),
          ),
          const Text('路径，package:包名'),
          Image.asset('assets/images/alert_twocards.png',
              package: 'demo_common'),
          const Text('packages/包名/路径'),
          Image.asset('packages/demo_common/assets/images/alert_twocards.png'),
          Obx(() => Text(controller.userStore.profile.name ?? '')),
          // Obx(() => Text(UserStore.to.profile.name ?? '--')),
          Text(controller.getUserName())
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NewsHomeController>(
      autoRemove: false,
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
