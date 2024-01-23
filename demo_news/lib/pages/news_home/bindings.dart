/*
 * @Author: rain zwen@86links.com
 * @Date: 2024-01-20 11:32:56
 * @LastEditors: rain zwen@86links.com
 * @LastEditTime: 2024-01-20 11:37:23
 * @FilePath: /demo/demo_news/lib/pages/news_home/bindings.dart
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
import 'package:demo_common/common_module.dart';

import 'controller.dart';

class NewsHomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NewsHomeController>(() => NewsHomeController());
  }
}
