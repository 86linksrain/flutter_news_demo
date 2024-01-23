import 'package:demo_common/model/user.dart';

class UserService {
  /// 登录
  static Future<UserModel> login({
    required Map<String, dynamic> params,
  }) async {
    await Future.delayed(const Duration(seconds: 1));
    params.addAll({'token': '1234-5678-90ab-cdef'});
    return UserModel.fromJson(params);
  }

  /// 注册
  static Future<bool> register({
    required Map params,
  }) async {
    await Future.delayed(const Duration(seconds: 1));
    return true;
  }

  /// 退出登录
  static Future<bool> logout() async {
    await Future.delayed(const Duration(seconds: 1));
    return true;
  }
}
