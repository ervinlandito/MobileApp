import 'package:get/get.dart';
import 'package:online_book_reading_app/app/modules/home/bindings/profile_binding.dart';
import 'package:online_book_reading_app/app/modules/home/bindings/signin_binding.dart';
import 'package:online_book_reading_app/app/modules/home/bindings/webview_binding.dart';
import 'package:online_book_reading_app/app/modules/home/views/Profile_view.dart';
import 'package:online_book_reading_app/app/modules/home/views/signin_view.dart';
import 'package:online_book_reading_app/app/modules/home/views/webview_view.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SIGNIN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SIGNIN,
      page: () => const SignIn(),
      binding: SigninBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => const ProfilView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.WEBVIEW,
      page: () => const WebViewPage(),
      binding: WebviewBinding(),
    ),
  ];
}
