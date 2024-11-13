import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';
import 'package:scb_arch_demo/utils/service/log_service.dart';

abstract class ConnectivityService extends GetxService {
  Rx<ConnectivityResult> result = ConnectivityResult.none.obs;

  Future<void> listenConnectivity();
}

class ConnectivityServiceImpl extends ConnectivityService {
  @override
  Future<void> listenConnectivity() async {
    result.value = await Connectivity().checkConnectivity();

    Connectivity().onConnectivityChanged.listen((event) {
      result.value = event;
      L.info(event);
    });
  }
}
