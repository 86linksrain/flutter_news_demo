/*
 * @Author: rain zwen@86links.com
 * @Date: 2024-01-20 12:07:28
 * @LastEditors: rain zwen@86links.com
 * @LastEditTime: 2024-01-23 11:52:05
 * @FilePath: /demo/demo_discover/lib/pages/discover_home/controller.dart
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
import 'package:demo_common/store/user.dart';
import 'package:get/get.dart';

import 'index.dart';

class DiscoverHomeController extends GetxController {
  DiscoverHomeController();

  final state = DiscoverHomeState();

  // tap
  void handleTap(int index) {
    Get.snackbar(
      "标题",
      "消息",
    );
  }

  /// 在 widget 内存中分配后立即调用。
  @override
  void onInit() {
    super.onInit();
    print('用户信息');
    print(Get.isRegistered<UserStore>());
  }

  /// 在 onInit() 之后调用 1 帧。这是进入的理想场所
  @override
  void onReady() {
    super.onReady();
  }

  /// 在 [onDelete] 方法之前调用。
  @override
  void onClose() {
    super.onClose();
  }

  /// dispose 释放内存
  @override
  void dispose() {
    super.dispose();
  }
}
