/*
 * @Author: rain zwen@86links.com
 * @Date: 2024-01-18 15:33:28
 * @LastEditors: rain zwen@86links.com
 * @LastEditTime: 2024-01-20 11:14:08
 * @FilePath: /demo/demo_auth/lib/auth_home/view.dart
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
import 'package:demo_common/common_module.dart';
import 'package:flutter/material.dart';

import 'index.dart';

class AuthHomePage extends GetView<AuthHomeController> {
  const AuthHomePage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    return ListView(
      children: [
        Text('名字'),
        TextField(
          decoration: InputDecoration(hintText: '请输入用户名字'),
        ),
        const SizedBox(
          height: 40,
        ),
        Text('密码'),
        TextField(
          decoration: InputDecoration(hintText: '请输入用户密码'),
        ),
        const SizedBox(
          height: 40,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            OutlinedButton(
                onPressed: () {
                  print('登录');
                },
                child: Text('登录')),
            OutlinedButton(
                onPressed: () {
                  print('注册');
                },
                child: Text('注册')),
          ],
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthHomeController>(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text("登录")),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
