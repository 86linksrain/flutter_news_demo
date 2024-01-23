/*
 * @Author: rain zwen@86links.com
 * @Date: 2024-01-18 17:40:00
 * @LastEditors: rain zwen@86links.com
 * @LastEditTime: 2024-01-18 20:00:16
 * @FilePath: /demo/demo_auth/lib/store/config.dart
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
import 'package:demo_common/common_module.dart';
import 'package:demo_common/config/constants.dart';
import 'package:flutter/material.dart';

class ConfigStore extends GetxController {
  static ConfigStore get to => Get.find();

  bool isFirstOpen = false;

  bool get isRelease => bool.fromEnvironment("dart.vm.product");
  Locale locale = Locale('en', 'US');
  List<Locale> languages = [
    Locale('en', 'US'),
    Locale('zh', 'CN'),
  ];

  @override
  void onInit() {
    super.onInit();
    isFirstOpen = StorageService.to.getBool(STORAGE_DEVICE_FIRST_OPEN_KEY);
  }

  // 标记用户已打开APP
  Future<bool> saveAlreadyOpen() {
    return StorageService.to.setBool(STORAGE_DEVICE_FIRST_OPEN_KEY, false);
  }

  // void onInitLocale() {
  //   var langCode = StorageService.to.getString(STORAGE_LANGUAGE_CODE);
  //   if (langCode.isEmpty) return;
  //   var index = languages.indexWhere((element) {
  //     return element.languageCode == langCode;
  //   });
  //   if (index < 0) return;
  //   locale = languages[index];
  // }

  // void onLocaleUpdate(Locale value) {
  //   locale = value;
  //   Get.updateLocale(value);
  //   StorageService.to.setString(STORAGE_LANGUAGE_CODE, value.languageCode);
  // }
}
