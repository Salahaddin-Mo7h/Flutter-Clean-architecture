// ignore_for_file: non_constant_identifier_names
import '../../features/authentication/authentication.dart';

class AppRoute {
  // Base
  static String root = '/';

  // Authentication
  static String LO10 = '/login';

  static String LO20 = '/forgot_password';

  static String RE10 = '/register';

  static List<GetPage> generateGetPages = [
    // Authentication
    GetPage(
      name: LO10,
      page: LoginPage.new,
      binding: LoginBinding(),
    ),
    GetPage(
      name: LO20,
      page: ForgotPasswordPage.new,
      binding: ForgotPasswordBinding(),
    ),
    GetPage(
      name: RE10,
      page: RegisterPage.new,
      binding: RegisterBinding(),
    ),
  ];

  static GetPage? getPage(String name) {
    return generateGetPages.firstWhereOrNull((e) => e.name == name);
  }
}
