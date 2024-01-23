/*
 * @Author: rain zwen@86links.com
 * @Date: 2024-01-18 17:43:59
 * @LastEditors: rain zwen@86links.com
 * @LastEditTime: 2024-01-23 13:48:03
 * @FilePath: /demo/demo_auth/lib/store/user.dart
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
import 'dart:convert';

import 'package:demo_common/common_module.dart';
import 'package:demo_common/config/constants.dart';
import 'package:demo_common/model/user.dart';

class UserStore extends GetxController {
  static UserStore get to => Get.find();

  // 是否登录
  final _isLogin = false.obs;
  // 令牌 token
  String token = '';
  // 用户 profile
  final _profile = UserModel().obs;

  bool get isLogin => _isLogin.value;
  UserModel get profile => _profile.value;
  bool get hasToken => token.isNotEmpty;

  @override
  void onInit() {
    super.onInit();
    token = StorageService.to.getString(STORAGE_USER_TOKEN_KEY);
    var profileOffline = StorageService.to.getString(STORAGE_USER_PROFILE_KEY);
    if (profileOffline.isNotEmpty) {
      _isLogin.value = true;
      _profile(UserModel.fromJson(jsonDecode(profileOffline)));
    }
  }

  // 保存 token
  Future<void> setToken(String value) async {
    await StorageService.to.setString(STORAGE_USER_TOKEN_KEY, value);
    token = value;
  }

  // 获取 profile
  // Future<void> getProfile() async {
  //   if (token.isEmpty) return;
  //   var result = await UserAPI.profile();
  //   _profile(result);
  //   _isLogin.value = true;
  //   StorageService.to.setString(STORAGE_USER_PROFILE_KEY, jsonEncode(result));
  // }

  // 保存 profile
  Future<void> saveProfile(UserModel profile) async {
    _isLogin.value = true;
    _profile(profile);
    StorageService.to
        .setString(STORAGE_USER_PROFILE_KEY, jsonEncode(profile.toJson()));
  }

  // 注销
  Future<void> onLogout() async {
    await StorageService.to.remove(STORAGE_USER_TOKEN_KEY);
    _isLogin.value = false;
    token = '';
  }
}
