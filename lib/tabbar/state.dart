/*
 * @Author: rain zwen@86links.com
 * @Date: 2024-01-20 14:53:12
 * @LastEditors: rain zwen@86links.com
 * @LastEditTime: 2024-01-20 15:16:25
 * @FilePath: /demo/lib/tabbar.dart/state.dart
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */


import 'package:demo_common/common_module.dart';

class TabbarState {
  // title
  // 当前 tab 页码
  final _page = 0.obs;
  set page(value) => _page.value = value;
  get page => _page.value;
}
