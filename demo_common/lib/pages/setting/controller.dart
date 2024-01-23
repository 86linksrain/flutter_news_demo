/*
 * @Author: rain zwen@86links.com
 * @Date: 2024-01-20 11:18:59
 * @LastEditors: rain zwen@86links.com
 * @LastEditTime: 2024-01-20 11:21:12
 * @FilePath: /demo/demo_common/lib/pages/setting/controller.dart
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
import 'dart:ui';

import 'package:get/get.dart';

import '../../theme.dart';
import 'index.dart';

class SettingController extends GetxController {
  SettingController();

  final state = SettingState();
  List themeList = [
    {'color': const Color(0xffFC5517), 'theme': Themes.park, 'name': '园区主题'},
    {'color': const Color(0xff1768E4), 'theme': Themes.company, 'name': '企业主题'}
  ];
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
