/*
 * @Author: rain zwen@86links.com
 * @Date: 2024-01-20 14:53:12
 * @LastEditors: rain zwen@86links.com
 * @LastEditTime: 2024-01-23 11:43:33
 * @FilePath: /demo/lib/tabbar.dart/controller.dart
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
import 'package:demo_common/store/user.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';

class TabbarController extends GetxController {
  TabbarController();

  final state = TabbarState();

  /// 成员变量

  // tab 页标题
  late final List<String> tabTitles;

  // 页控制器
  late final PageController pageController;

  // 底部导航项目
  late final List<BottomNavigationBarItem> bottomTabs;

  /// 事件

  // tab栏动画
  void handleNavBarTap(int index) {
    pageController.animateToPage(index,
        duration: const Duration(milliseconds: 200), curve: Curves.ease);
  }

  // tab栏页码切换
  void handlePageChanged(int page) {
    state.page = page;
  }

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
    // print(Get.isRegistered<UserStore>());
    // print(UserStore.to.isLogin);
    // print(UserStore.to.profile.name);
    super.onInit();

    // 准备一些静态数据
    tabTitles = ['main', 'category', 'mine'];
    bottomTabs = <BottomNavigationBarItem>[
      const BottomNavigationBarItem(icon: Icon(Icons.home), label: 'main'),
      const BottomNavigationBarItem(
          icon: Icon(Icons.category_sharp), label: 'category'),
      const BottomNavigationBarItem(icon: Icon(Icons.person), label: 'mine')
    ];

    pageController = PageController(initialPage: state.page);
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
    pageController.dispose();
    super.dispose();
  }
}
