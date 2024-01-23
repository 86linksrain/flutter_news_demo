/*
 * @Author: rain zwen@86links.com
 * @Date: 2024-01-18 15:33:28
 * @LastEditors: rain zwen@86links.com
 * @LastEditTime: 2024-01-22 20:18:43
 * @FilePath: /demo/demo_auth/lib/pages/auth_home/controller.dart
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
import 'package:demo_common/common_module.dart';
import 'package:demo_common/store/user.dart';
import 'package:flutter/material.dart';

import '../../services/user.dart';
import 'index.dart';

class AuthHomeController extends GetxController {
  AuthHomeController();

  final state = AuthHomeState();
  final nameController = TextEditingController();
  final pwdController = TextEditingController();

  // tap
  void handleTap(int index) {
    Get.snackbar(
      "标题",
      "消息",
    );
  }

  handleLogin() async {
    String name = nameController.text;
    String pwd = pwdController.text;
    await UserService.login(params: {'name': name, 'pwd': pwd}).then((value) {
      UserStore.to.saveProfile(value);
    });
    Get.back();
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
