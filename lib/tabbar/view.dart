/*
 * @Author: rain zwen@86links.com
 * @Date: 2024-01-20 14:53:12
 * @LastEditors: rain zwen@86links.com
 * @LastEditTime: 2024-01-20 16:30:35
 * @FilePath: /demo/lib/tabbar.dart/view.dart
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
import 'package:demo_common/common_module.dart';
import 'package:demo_discover/pages/discover_home/index.dart';
import 'package:demo_mine/pages/mine_home/index.dart';
import 'package:demo_news/pages/news_home/index.dart';
import 'package:flutter/material.dart';

import 'index.dart';

class TabbarPage extends GetView<TabbarController> {
  const TabbarPage({Key? key}) : super(key: key);

  // 顶部导航
  /*
  AppBar _buildAppBar() {
    return transparentAppBar(
        title: Obx(() => Text(
              controller.tabTitles[controller.state.page],
              style: TextStyle(
                color: AppColors.primaryText,
                fontFamily: 'Montserrat',
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
              ),
            )),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: AppColors.primaryText,
            ),
            onPressed: () {},
          )
        ]);
  }
*/
  // 内容页
  Widget _buildPageView() {
    return PageView(
      physics: const NeverScrollableScrollPhysics(),
      controller: controller.pageController,
      onPageChanged: controller.handlePageChanged,
      children: const <Widget>[
        NewsHomePage(),
        DiscoverHomePage(),
        MineHomePage()
      ],
    );
  }

  // 底部导航
  Widget _buildBottomNavigationBar() {
    return Obx(() => BottomNavigationBar(
          items: controller.bottomTabs,
          currentIndex: controller.state.page,
          // fixedColor: AppColors.primaryElement,
          type: BottomNavigationBarType.fixed,
          onTap: controller.handleNavBarTap,
          // showSelectedLabels: false,
          // showUnselectedLabels: false,
        ));
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<TabbarController>(
      builder: (_) {
        return Scaffold(
          // appBar: AppBar(title: const Text("demo")),
          body: _buildPageView(),
          bottomNavigationBar: _buildBottomNavigationBar(),
        );
      },
    );
  }
}
