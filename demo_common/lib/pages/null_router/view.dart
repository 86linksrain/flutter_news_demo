import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';


class NullRouterPage extends GetView<NullRouterController> {
  const NullRouterPage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    return const Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.error_outline,
              color: Colors.red,
              size: 50,
            ),
            SizedBox(height: 50),
            Text("空路由"),
          ],
        ),
      );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NullRouterController>(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text("null_router")),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
