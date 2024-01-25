import 'dart:io';

import 'package:demo_common/util/file.dart';
import 'package:demo_common/util/permission.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';

import 'util/image.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String? imagepath;
  File? file;

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Column(
          children: [
            file == null
                ? const Text('占位')
                : Image.file(file!, width: 200, height: 200),
            Container(
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.black)),
              child: Wrap(
                children: <Widget>[
                  TextButton(
                      onPressed: () {
                        ImageUtil().takePhoto().then((value) {
                          print('object');
                          setState(() {
                            file = value;
                          });
                        });
                      },
                      child: const Text('拍照')),
                  TextButton(
                      onPressed: () {
                        ImageUtil().pickImage().then((value) {
                          print('object');
                          setState(() {
                            file = value;
                          });
                        });
                      },
                      child: const Text('单选图片')),
                  TextButton(
                      onPressed: () {
                        ImageUtil().pickImageAndVideo().then((value) {
                          value?.map((e) => print(e.path));
                        });
                      },
                      child: const Text('多种类型图片')),
                  TextButton(
                      onPressed: () {
                        ImageUtil().pickManyImages().then((value) {
                          value?.map((e) => print(e.path));
                        });
                      },
                      child: const Text('多选图片')),
                  TextButton(
                      onPressed: () {
                        ImageUtil().selectBottomSheet().then((value) {
                          setState(() {
                            file = value;
                          });
                        });
                      },
                      child: const Text('弹出工具')),
                ],
              ),
            ),
            Container(
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.yellow)),
              child: Wrap(
                children: <Widget>[
                  TextButton(
                      onPressed: () {
                        FileUtil()
                            .filePicker(image: true, video: true)
                            .then((value) {
                          print(value);
                        });
                      },
                      child: const Text('选文件')),
                  TextButton(
                      onPressed: () {
                        FileUtil().fileImagePicker().then((value) {});
                      },
                      child: const Text('选图片文件')),
                  TextButton(
                      onPressed: () {
                        FileUtil().fileImageMultiplePicker().then((value) {});
                      },
                      child: const Text('选多个图片文件')),
                  TextButton(
                      onPressed: () {
                        FileUtil().fileVideoPicker().then((value) {});
                      },
                      child: const Text('选视频文件')),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(border: Border.all(color: Colors.red)),
              child: Wrap(
                children: <Widget>[
                  TextButton(
                      onPressed: () {
                        PermissionUtil().getCameraPermission().then((value) {
                          print(value ? '有权限' : '没权限');
                        });
                      },
                      child: const Text('获取相机权限')),
                  TextButton(
                      onPressed: () {
                        PermissionUtil().getPhotosPermission().then((value) {
                          print(value ? '有权限' : '没权限');
                        });
                      },
                      child: const Text('获取相册权限')),
                  TextButton(
                      onPressed: () {
                        PermissionUtil()
                            .getCameraAndPhotosPermission()
                            .then((value) {
                          print('相机' +
                              (value[0] ? '有权限' : '没权限') +
                              '相册' +
                              (value[1] ? '有权限' : '没权限'));
                        });
                      },
                      child: const Text('获取相机相册权限')),
                  TextButton(
                      onPressed: () {
                        PermissionUtil().getLocationPermission().then((value) {
                          print(value ? '有权限' : '没权限');
                        });
                      },
                      child: const Text('获取定位权限')),
                  TextButton(
                      onPressed: () {
                        PermissionUtil().getStoragePermission().then((value) {
                          print(value ? '有权限' : '没权限');
                        });
                      },
                      child: const Text('获取存储权限')),
                  TextButton(
                      onPressed: () {
                        PermissionUtil()
                            .getNotificationPermission()
                            .then((value) {
                          print(value ? '有权限' : '没权限');
                        });
                      },
                      child: const Text('获取通知权限'))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
