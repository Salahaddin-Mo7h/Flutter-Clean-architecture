import 'package:scb_arch_demo/base/data/model/pretty_json_mixin.dart';

@jsonSerializable
@Json(caseStyle: CaseStyle.snake, ignoreNullMembers: true, name: 'data')
class User with PrettyJsonMixin {
  String name = '';

  String email = '';

  int? age;

  List<String> friends = [];
}
