import 'dart:ui' show Color;

import 'package:get/get.dart';
import 'package:webview_flutter/src/navigation_delegate.dart';
import 'package:webview_flutter_platform_interface/src/types/javascript_mode.dart';

class WebViewPageController extends GetxController {
  setJavaScriptMode(JavaScriptMode unrestricted) {}

  setBackgroundColor(Color color) {}

  setNavigationDelegate(NavigationDelegate navigationDelegate) {}

  loadRequest(Uri parse) {}
}
