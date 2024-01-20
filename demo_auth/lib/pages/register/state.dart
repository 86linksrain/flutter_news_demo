import 'package:demo_common/common_module.dart';

class RegisterState {
  // title
  final _title = "".obs;
  set title(value) => _title.value = value;
  get title => _title.value;
}
