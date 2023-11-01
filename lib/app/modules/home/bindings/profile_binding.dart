import 'package:get/get.dart';
import 'package:online_book_reading_app/app/modules/home/controllers/Profile_controller.dart';

class ProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileController>(
      () => ProfileController(),
    );
  }
}
