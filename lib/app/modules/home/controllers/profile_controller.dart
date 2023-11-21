// ignore_for_file: file_names

import 'dart:io' show File;

import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:online_book_reading_app/app/modules/home/views/signin_view.dart';

class ProfileController extends GetxController {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  final ImagePicker imagePicker = ImagePicker();
  final Rx<File?> pickedImage = Rx<File?>(null);

  Future pickImageGalery() async {
    try {
      var pickedfile = await imagePicker.pickImage(source: ImageSource.gallery);

      //you can use ImageCourse.camera for Camera capture
      if (pickedfile != null) {
        pickedImage.value = File(pickedfile.path);
        // imagefiles.add(pickedImage.value!);
      }
    } catch (e) {
      ('error while picking file.');
    }
  }

  Future<void> pickImageCamera() async {
    try {
      var pickedfile = await imagePicker.pickImage(source: ImageSource.camera);

      //you can use ImageCourse.camera for Camera capture
      if (pickedfile != null) {
        pickedImage.value = File(pickedfile.path);
        // imagefiles.add(pickedImage.value!);
      }
    } catch (e) {
      ('error while picking file.');
    }
  }

  void setImage(String path) {}

  void signOut() async {
    await _auth.signOut();
    Get.off(SignIn());
  }
}
