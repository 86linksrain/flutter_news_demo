import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';

class PermissionUtil {
  /// 获取相机权限
  Future<bool> getCameraPermission() async {
    bool permission = false;
    await Permission.camera.onDeniedCallback(() {
      print('permission is denied 拒绝');
    }).onGrantedCallback(() {
      permission = true;
      print('permission is granted 允许');
    }).onLimitedCallback(() {
      print('permission is limited 有限的 ios only');
    }).onPermanentlyDeniedCallback(() {
      print('permission is  permanently denied 永久拒绝 android only');
    }).onProvisionalCallback(() {
      print('permission is provisional 临时的 ios only');
    }).onRestrictedCallback(() {
      print('permission is restricted 受限制的 ios only');
    }).request();
    if (!permission) {
      Get.defaultDialog(
          middleText: '暂无权限，请在设置中打开相机授权',
          // cancel: Text('取消'),
          // confirm: Text('去设置'),
          onCancel: () => Get.back(),
          onConfirm: () {
            openAppSettings();
            Get.back();
          });
    }
    return permission;
  }

  /// 获取相册权限
  Future<bool> getPhotosPermission() async {
    bool permission = false;
    await Permission.photos.onDeniedCallback(() {
      print('permission is denied 拒绝');
    }).onGrantedCallback(() {
      permission = true;
      print('permission is granted 允许');
    }).onLimitedCallback(() {
      permission = true;
      print('permission is limited 有限的 ios only');
    }).onPermanentlyDeniedCallback(() {
      print('permission is  permanently denied 永久拒绝 android only');
    }).onProvisionalCallback(() {
      print('permission is provisional 临时的 ios only');
    }).onRestrictedCallback(() {
      print('permission is restricted 受限制的 ios only');
    }).request();
    if (!permission) {
      Get.defaultDialog(
          middleText: '暂无权限，请在设置中打开相册授权',
          // cancel: Text('取消'),
          // confirm: Text('去设置'),
          onCancel: () => Get.back(),
          onConfirm: () {
            openAppSettings();
            Get.back();
          });
    }
    return permission;
  }

  /// 获取相机、相册权限
  Future<List<bool>> getCameraAndPhotosPermission() async {
    // Future.wait() 同时发 可能请求不到
    bool cameraPermission = await PermissionUtil().getCameraPermission();
    bool photosPermission = await PermissionUtil().getPhotosPermission();

    List<bool> permissionList = [cameraPermission, photosPermission];
    return permissionList;
  }

  /// 获取定位权限
  Future<bool> getLocationPermission() async {
    bool permission = false;
    await Permission.location.onDeniedCallback(() {
      print('permission is denied 拒绝');
    }).onGrantedCallback(() {
      permission = true;
      print('permission is granted 允许');
    }).onLimitedCallback(() {
      permission = true;
      print('permission is limited 有限的 ios only');
    }).onPermanentlyDeniedCallback(() {
      print('permission is  permanently denied 永久拒绝 android only');
    }).onProvisionalCallback(() {
      print('permission is provisional 临时的 ios only');
    }).onRestrictedCallback(() {
      print('permission is restricted 受限制的 ios only');
    }).request();
    if (!permission) {
      Get.defaultDialog(
          middleText: '暂无权限，请在设置中打开定位授权',
          // cancel: Text('取消'),
          // confirm: Text('去设置'),
          onCancel: () => Get.back(),
          onConfirm: () {
            openAppSettings();
            Get.back();
          });
    }
    return permission;
  }

  /// 获取存储（媒体存储）权限
  Future<bool> getStoragePermission() async {
    bool permission = false;
    await Permission.storage.onDeniedCallback(() {
      print('permission is denied 拒绝');
    }).onGrantedCallback(() {
      permission = true;
      print('permission is granted 允许');
    }).onLimitedCallback(() {
      permission = true;
      print('permission is limited 有限的 ios only');
    }).onPermanentlyDeniedCallback(() {
      print('permission is  permanently denied 永久拒绝 android only');
    }).onProvisionalCallback(() {
      print('permission is provisional 临时的 ios only');
    }).onRestrictedCallback(() {
      print('permission is restricted 受限制的 ios only');
    }).request();
    if (!permission) {
      Get.defaultDialog(
          middleText: '暂无权限，请在设置中打开媒体存储授权',
          // cancel: Text('取消'),
          // confirm: Text('去设置'),
          onCancel: () => Get.back(),
          onConfirm: () {
            openAppSettings();
            Get.back();
          });
    }
    return permission;
  }

  /// 获取通知权限
  Future<bool> getNotificationPermission() async {
    bool permission = false;
    await Permission.notification.onDeniedCallback(() {
      print('permission is denied 拒绝');
    }).onGrantedCallback(() {
      permission = true;
      print('permission is granted 允许');
    }).onLimitedCallback(() {
      permission = true;
      print('permission is limited 有限的 ios only');
    }).onPermanentlyDeniedCallback(() {
      print('permission is  permanently denied 永久拒绝 android only');
    }).onProvisionalCallback(() {
      print('permission is provisional 临时的 ios only');
    }).onRestrictedCallback(() {
      print('permission is restricted 受限制的 ios only');
    }).request();
    if (!permission) {
      Get.defaultDialog(
          middleText: '请在设置中打开通知权限',
          // cancel: Text('取消'),
          // confirm: Text('去设置'),
          onCancel: () => Get.back(),
          onConfirm: () {
            openAppSettings();
            Get.back();
          });
    }
    return permission;
  }
}
