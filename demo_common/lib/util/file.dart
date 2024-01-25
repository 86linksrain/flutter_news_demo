import 'dart:io';

import 'package:file_picker/file_picker.dart';

class FileUtil {
  // custom 定制类型
  // audio 音频
  // media 媒体

  /// image 和 video 常用格式可以 特殊类型无法使用 且多选目前iOS有效安卓部分机型无效
  Future<File?> filePicker({bool image = false, bool video = false}) async {
    File? file;
    List<String> typeList = ['pdf', 'zip', 'rar', 'doc', 'docx', 'xls', 'xlsx'];
    image ? typeList.addAll(['png', 'jpg', 'jpeg']) : null;
    video ? typeList.addAll(['mp4', 'avi', 'flv', 'wmv']) : null;

    var result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: typeList,
      // allowMultiple: true
    );
    if (result != null) {
      file = File(result.files.single.path!);
    }

    return file;
  }

  Future<File?> fileImagePicker() async {
    var result = await FilePicker.platform.pickFiles(type: FileType.image);

    return File(result!.files.single.path!);
  }

  Future<List<File>?> fileImageMultiplePicker() async {
    var result = await FilePicker.platform
        .pickFiles(type: FileType.image, allowMultiple: true);
    List<File>? fileList = [];
    if (result != null) {
      for (var element in result.files) {
        fileList.add(File(element.path ?? ''));
      }
    }
    return fileList;
  }

  Future<File?> fileVideoPicker() async {
    var result = await FilePicker.platform.pickFiles(type: FileType.video);

    return File(result!.files.single.path!);
  }
}
