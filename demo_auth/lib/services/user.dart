import 'package:demo_auth/model/user.dart';

class UserService {
  /// 登录
  static Future<UserModel> login({
    required Map params,
  }) async {
    await Future.delayed(const Duration(seconds: 1));
    params.addAll({'token': '1234-5678-90ab-cdef'});
    return UserModel.fromJson(params as Map<String, dynamic>);
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
