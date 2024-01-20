/*
 * @Author: rain zwen@86links.com
 * @Date: 2024-01-18 15:47:30
 * @LastEditors: rain zwen@86links.com
 * @LastEditTime: 2024-01-20 11:35:45
 * @FilePath: /demo/demo_auth/lib/pages/register/bindings.dart
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
import 'package:demo_common/common_module.dart';

import 'controller.dart';

class RegisterBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RegisterController>(() => RegisterController());
  }
}
