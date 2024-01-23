import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';
import 'widgets/widgets.dart';

class DiscoverPage1Page extends GetView<DiscoverPage1Controller> {
  const DiscoverPage1Page({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    return const HelloWidget();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DiscoverPage1Controller>(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text("discover_page1")),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
