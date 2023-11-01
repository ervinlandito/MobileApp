import 'package:get/get.dart';
import 'package:online_book_reading_app/app/modules/home/controllers/webview_controller.dart';

class WebviewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WebViewPageController>(
      () => WebViewPageController(),
    );
  }
}
