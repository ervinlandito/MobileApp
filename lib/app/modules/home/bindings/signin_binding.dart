import 'package:get/get.dart';
import 'package:online_book_reading_app/app/modules/home/controllers/signin_controller.dart';

class SigninBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SigninController>(
      () => SigninController(),
    );
  }
}
