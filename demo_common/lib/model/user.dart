/*
 * @Author: rain zwen@86links.com
 * @Date: 2024-01-18 17:51:51
 * @LastEditors: rain zwen@86links.com
 * @LastEditTime: 2024-01-22 19:31:53
 * @FilePath: /demo/demo_auth/lib/model/user.dart
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */

class UserModel {
  String? name;
  String? pwd;
  String? token;

  UserModel({this.name, this.pwd, this.token});

  UserModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    pwd = json['pwd'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['pwd'] = pwd;
    data['token'] = token;

    return data;
  }
}
