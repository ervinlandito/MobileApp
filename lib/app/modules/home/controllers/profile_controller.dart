// ignore_for_file: file_names

import 'dart:io' show File;

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ProfileController extends GetxController {
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
}
