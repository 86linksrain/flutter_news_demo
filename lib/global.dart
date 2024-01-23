/*
 * @Author: rain zwen@86links.com
 * @Date: 2024-01-18 19:56:19
 * @LastEditors: rain zwen@86links.com
 * @LastEditTime: 2024-01-22 20:19:04
 * @FilePath: /demo/lib/global.dart
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */

import 'package:demo_common/common_module.dart';
import 'package:demo_common/store/config.dart';
import 'package:demo_common/store/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Global {
  static Future init() async {
    WidgetsFlutterBinding.ensureInitialized();
    await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    await Get.putAsync<StorageService>(() => StorageService().init());
    Get.put<ConfigStore>(ConfigStore());
    Get.put<UserStore>(UserStore());
  }
}
