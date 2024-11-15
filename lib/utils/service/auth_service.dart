import 'package:get/get.dart';
import 'package:scb_arch_demo/base/data/local/local_storage.dart';
import 'package:scb_arch_demo/features/authentication/domain/repositories/auth_repo.dart';

abstract class AuthService extends GetxService {
  String get email;
  void setEmail(String email);

  Future<bool> isAuthenticated();
  Future<void> logout();
}

class AuthServiceImpl extends AuthService {
  final LocalStorage _localStorage = Get.find();

  var _email = '';

  @override
  String get email => _email;

  @override
  void setEmail(String email) {
    _email = email;
  }

  @override
  Future<bool> isAuthenticated() async {
    return await _localStorage.userToken != null;
  }

  @override
  Future<void> logout() async {
    if (await isAuthenticated()) {
      await Get.find<AuthRepo>().logout();
    }
    await _localStorage.removeAllData();
  }
}
