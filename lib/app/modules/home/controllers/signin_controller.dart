import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SigninController extends GetxController {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();
  RxBool isLoading = false.obs;
  RxBool isLoggedIn = false.obs; // Add the isLoggedIn property

  Future<void> loginUser(String email, String password) async {
    try {
      isLoading.value = true;
      await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      Get.snackbar('Success', 'Login successful',
          backgroundColor: Colors.green);

      // Set isLoggedIn to true if login is successful
      isLoggedIn.value = true;
    } catch (error) {
      Get.snackbar('Error', 'Login failed: $error',
          backgroundColor: Colors.red);

      // Set isLoggedIn to false if login fails
      isLoggedIn.value = false;
    } finally {
      isLoading.value = false;
    }
  }
}
