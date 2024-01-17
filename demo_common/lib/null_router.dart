/*
 * @Author: rain zwen@86links.com
 * @Date: 2024-01-16 16:31:08
 * @LastEditors: rain zwen@86links.com
 * @LastEditTime: 2024-01-16 17:58:21
 * @FilePath: /demo/demo_common/lib/null_router.dart
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
import 'package:flutter/material.dart';

class NullRouter extends StatelessWidget {
  const NullRouter({Key? key // 接收一个text参数
      })
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("空路由"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.error_outline,
              color: Colors.red,
              size: 50,
            ),
            SizedBox(height: 50),
            Text("空路由"),
          ],
        ),
      ),
    );
  }
}
