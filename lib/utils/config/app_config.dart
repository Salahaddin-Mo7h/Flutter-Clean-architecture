import 'dart:io' show Platform;

import 'package:flutter/rendering.dart';
import 'package:native_flutter_proxy/custom_proxy.dart';
import 'package:native_flutter_proxy/native_proxy_reader.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:scb_arch_demo/utils/config/env/dev_env.dart';
import 'package:scb_arch_demo/utils/config/env/prod_env.dart';
import 'package:scb_arch_demo/utils/config/env/qa_env.dart';
import 'package:scb_arch_demo/utils/config/env/stag_env.dart';
import 'package:scb_arch_demo/utils/config/env/uat_env.dart';
import 'package:scb_arch_demo/utils/service/log_service.dart';

import 'env/app_env.dart';

enum Environment { dev, uat, qa, stag, prod }

class AppConfig {
  static Environment env = Environment.dev;
  static AppEnv appEnv = QaEnv();

  static String baseUrl = '';
  static String apiKey = '';
  static String? currentProxy;
  static PackageInfo? _packageInfo;

  static String get appVersion {
    return _packageInfo != null
        ? '${_packageInfo?.version.split(' ').first} (${_packageInfo?.buildNumber})'
        : '';
  }

  static String get packageName => _packageInfo?.packageName ?? '';

  static String get purchaseKey {
    if (Platform.isAndroid) {
      return appEnv.revenueCatPublicKeyAndroid;
    }

    return appEnv.revenueCatPublicKeyIos;
  }

  static Future<void> loadEnv() async {
    await _checkEnv();
    debugPrint('$env');

    switch (env) {
      case Environment.dev:
        appEnv = DevEnv();
        await _configProxy();
        break;
      case Environment.uat:
        appEnv = UatEnv();
        await _configProxy();
        break;
      case Environment.qa:
        appEnv = QaEnv();
        await _configProxy();
        break;
      case Environment.stag:
        appEnv = StagEnv();
        await _configProxy();
        break;
      case Environment.prod:
        appEnv = ProdEnv();
        break;
      default:
    }

    baseUrl = appEnv.baseUrl;
    debugPrint(baseUrl);
    apiKey = appEnv.baseUrl;
    debugPrint(baseUrl);
  }

  static Future<void> _checkEnv() async {
    _packageInfo = await PackageInfo.fromPlatform();
    final packageName = _packageInfo?.packageName ?? '';
    try {
      if (packageName.contains(Environment.dev.name)) {
        env = Environment.dev;
      } else if (packageName.contains(Environment.uat.name)) {
        env = Environment.uat;
      } else if (packageName.contains(Environment.qa.name)) {
        env = Environment.qa;
      } else if (packageName.contains(Environment.stag.name)) {
        env = Environment.stag;
      } else {
        env = Environment.prod;
      }
    } catch (e) {
      env = Environment.dev;
    }
  }

  static Future<void> _configProxy() async {
    bool enabled = false;
    String? host;
    int? port;
    try {
      final ProxySetting settings = await NativeProxyReader.proxySetting;
      enabled = settings.enabled;
      host = settings.host;
      port = settings.port;
    } catch (error) {
      L.error(error);
    }
    if (enabled && host != null) {
      final proxy = CustomProxy(ipAddress: host, port: port);
      currentProxy = proxy.toString();
    }
  }
}
