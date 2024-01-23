import 'package:demo_common/common_module.dart';

class NewsPage1State {
  // title
  final _title = "".obs;
  set title(value) => _title.value = value;
  get title => _title.value;
}
