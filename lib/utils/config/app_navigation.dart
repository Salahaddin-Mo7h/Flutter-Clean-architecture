import 'package:scb_arch_demo/utils/extension/route_type.dart';

import '../../base/base.dart';
import 'app_route.dart';

class N {
  static void popUntilRoot() {
    Get.until((route) => route.isFirst);
  }

  static void closeAllDialog() {
    Get.until((route) => Get.isDialogOpen == false);
  }

  // Authentication
  static void toLogin({RouteType type = RouteType.to}) {
    type.navigate(name: AppRoute.LO10);
  }

  static void toForgotPassword({RouteType type = RouteType.to}) {
    type.navigate(name: AppRoute.LO20);
  }

  static void toRegister({RouteType type = RouteType.to}) {
    type.navigate(name: AppRoute.RE10);
  }
}
