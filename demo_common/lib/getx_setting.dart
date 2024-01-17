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
