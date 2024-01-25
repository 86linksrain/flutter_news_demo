/*
 * @Author: rain zwen@86links.com
 * @Date: 2024-01-23 19:13:54
 * @LastEditors: rain zwen@86links.com
 * @LastEditTime: 2024-01-25 17:47:21
 * @FilePath: /demo/demo_common/lib/util/image.dart
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
import 'dart:io';

import 'package:demo_common/util/permission.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

// 相机相册工具类 已经判断过系统权限
class ImageUtil {
  /// 拍照
  Future<File?> takePhoto() async {
    File? file;
    bool isHave = await PermissionUtil().getCameraPermission();
    if (isHave) {
      XFile? pickedFile = await ImagePicker().pickImage(
        source: ImageSource.camera,
        imageQuality: 30,
      );

      if (pickedFile != null) {
        file = File(pickedFile.path);
      }
    }

    return file;
  }

  /// 拍视频
  Future<File?> takeVideo() async {
    File? file;
    bool isHave = await PermissionUtil().getCameraPermission();

    if (isHave) {
      XFile? pickedFile = await ImagePicker().pickVideo(
          source: ImageSource.camera, preferredCameraDevice: CameraDevice.rear);

      if (pickedFile != null) {
        file = File(pickedFile.path);
      }
    }

    return file;
  }

  ///  选一张图片
  Future<File?> pickImage() async {
    File? file;
    bool isHave = await PermissionUtil().getPhotosPermission();

    if (isHave) {
      XFile? pickedFile = await ImagePicker().pickImage(
          source: ImageSource.gallery,
          imageQuality: 30,
          preferredCameraDevice: CameraDevice.rear);

      if (pickedFile != null) {
        file = File(pickedFile.path);
      }
    }

    return file;
  }

  // 选多张图片
  Future<List<File>?> pickManyImages() async {
    List<File>? fileList = [];
    bool isHave = await PermissionUtil().getPhotosPermission();

    if (isHave) {
      List<XFile>? pickedFiles =
          await ImagePicker().pickMultiImage(imageQuality: 30);

      if (pickedFiles.isNotEmpty) {
        for (var element in pickedFiles) {
          var file = File(element.path);
          fileList.add(file);
        }
      }
    }

    return fileList;
  }

  /// 选图片和视频
  Future<List<File>?> pickImageAndVideo() async {
    List<File>? fileList = [];
    bool isHave = await PermissionUtil().getPhotosPermission();

    if (isHave) {
      List<XFile>? pickedFiles =
          await ImagePicker().pickMultipleMedia(imageQuality: 30);
      if (pickedFiles.isNotEmpty) {
        for (var element in pickedFiles) {
          var file = File(element.path);
          fileList.add(file);
        }
      }
    }
    return fileList;
  }

  Future<File?> selectBottomSheet() async {
    var file = await Get.bottomSheet(
        Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: const Icon(Icons.photo_camera),
              title: const Text("相机"),
              onTap: () async {
                Get.back(result: await ImageUtil().takePhoto());
              },
            ),
            ListTile(
              leading: const Icon(Icons.photo_library),
              title: const Text("相册"),
              onTap: () async {
                // file = value;
                Get.back(result: await ImageUtil().pickImage());
              },
            )
          ],
        ),
        backgroundColor: Colors.white);

    return file;
  }
}
