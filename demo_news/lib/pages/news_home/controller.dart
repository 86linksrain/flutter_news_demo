import 'package:demo_common/common_module.dart';
import 'package:demo_common/model/user.dart';
import 'package:demo_common/store/user.dart';

import 'index.dart';

class NewsHomeController extends GetxController {
  NewsHomeController();

  final state = NewsHomeState();

  UserModel? loginInfo;
  bool? isLogin;
  UserStore userStore = Get.find();

  // tap
  void handleTap(int index) {
    Get.snackbar(
      "标题",
      "消息",
    );
  }

  /// 在 widget 内存中分配后立即调用。
  @override
  void onInit() {
    super.onInit();
    // loginInfo = Get.
    print('用户信息');
    print(Get.isRegistered<UserStore>());
    print(userStore.isLogin);
    print(userStore.profile.name);
    loginInfo = UserStore.to.profile;
    isLogin = UserStore.to.isLogin;
  }

  String getUserName() {
    return userStore.profile.name ?? '';
  }

  /// 在 onInit() 之后调用 1 帧。这是进入的理想场所
  @override
  void onReady() {
    super.onReady();
  }

  /// 在 [onDelete] 方法之前调用。
  @override
  void onClose() {
    super.onClose();
  }

  /// dispose 释放内存
  @override
  void dispose() {
    super.dispose();
  }
}
