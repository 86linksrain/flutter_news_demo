/*
 * @Author: rain zwen@86links.com
 * @Date: 2024-01-17 15:56:25
 * @LastEditors: rain zwen@86links.com
 * @LastEditTime: 2024-01-18 16:46:05
 * @FilePath: /demo/demo_common/lib/getx_setting.dart
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
import 'package:demo_common/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class GetxSetting extends StatelessWidget {
  GetxSetting({Key? key}) : super(key: key);

  List list = [
    {'color': const Color(0xffFC5517), 'theme': Themes.park, 'name': '园区主题'},
    {'color': const Color(0xff1768E4), 'theme': Themes.company, 'name': '企业主题'}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor:  ,
      appBar: AppBar(
        // backgroundColor: Themes.green,
        title: const Text("主题颜色"),
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(18.0),
            child: Text("切换主题"),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: list.length,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {
                      Get.changeTheme(list[index]['theme']);
                    },
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: list[index]['color'],
                        border: const Border(
                          bottom: BorderSide(
                            width: 1,
                            color: Colors.pink,
                          ),
                        ),
                      ),
                      alignment: Alignment.center,
                      child: Text(list[index]['name'].toString()),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
