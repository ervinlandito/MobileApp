import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:online_book_reading_app/app/modules/home/models/book_model.dart';
import 'package:online_book_reading_app/app/modules/home/views/signin_view.dart';

class HomeController extends GetxController {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  var data = <Book>[].obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    fetchData();
  }

  void fetchData() async {
    var response = await http.get(Uri.parse(
        "https://api.nytimes.com/svc/books/v3/lists/current/hardcover-fiction.json?api-key=Ns9NQsqlbqFb00TF1r4pStHs4xm3yY2D"));

    var res = BookData.fromJson(json.decode(response.body));
    data.assignAll(res.results.books);
  }

  void logout() async {
    await _auth.signOut();
    Get.off(SignIn());
  }
}
