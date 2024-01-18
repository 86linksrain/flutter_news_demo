/*
 * @Author: rain zwen@86links.com
 * @Date: 2024-01-18 15:47:30
 * @LastEditors: rain zwen@86links.com
 * @LastEditTime: 2024-01-18 15:47:46
 * @FilePath: /demo/demo_auth/lib/pages/register/view.dart
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';

class RegisterPage extends GetView<RegisterController> {
  const RegisterPage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    return Column(
      children: [
        const Row(
          children: [
            Text('名字'),
            TextField(
              decoration: InputDecoration(hintText: '请输入用户名字'),
            )
          ],
        ),
        const SizedBox(
          height: 40,
        ),
        const Row(
          children: [
            Text('密码'),
            TextField(
              decoration: InputDecoration(hintText: '请输入用户密码'),
            )
          ],
        ),
        OutlinedButton(
            onPressed: () {
              print('注册');
            },
            child: Text('注册'))
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<RegisterController>(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text("注册")),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
