import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';

class SettingPage extends GetView<SettingController> {
  const SettingPage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView(List themeList) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(18.0),
          child: Text("切换主题"),
        ),
        Expanded(
          child: ListView.builder(
              itemCount: themeList.length,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () {
                    Get.changeTheme(themeList[index]['theme']);
                  },
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: themeList[index]['color'],
                      border: const Border(
                        bottom: BorderSide(
                          width: 1,
                          color: Colors.pink,
                        ),
                      ),
                    ),
                    alignment: Alignment.center,
                    child: Text(themeList[index]['name'].toString()),
                  ),
                );
              }),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SettingController>(
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(title: const Text("setting")),
          body: SafeArea(
            child: _buildView(controller.themeList),
          ),
        );
      },
    );
  }
}
