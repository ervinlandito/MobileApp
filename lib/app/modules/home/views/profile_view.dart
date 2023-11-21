import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_book_reading_app/app/modules/home/controllers/profile_controller.dart';

class ProfilView extends GetView<ProfileController> {
  const ProfilView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Untuk menghilangkan tulisan debug di pojok kanan atas
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Futura',
      ),
      home: const DefaultTabController(
        length: 2,
        child: Home(),
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ProfileController profileController = Get.put(ProfileController());

    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        toolbarHeight: 70,
        actions: [
          IconButton(
            icon: const Icon(Icons.exit_to_app),
            onPressed: () {
              profileController.signOut();
            },
          ),
        ],
      ),
      backgroundColor: const Color.fromARGB(255, 39, 38, 46),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() {
              if (profileController.pickedImage.value != null) {
                return Image.file(profileController.pickedImage.value!);
              } else {
                return const Text("Tambahkan Gambar");
              }
            }),
            const SizedBox(
              height: 5,
              width: 5,
            ), // Menambahkan SizedBox di antara widget
            ElevatedButton(
              onPressed: () {
                profileController.pickImageGalery();
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                backgroundColor: const Color.fromARGB(255, 0, 0, 0),
              ),
              child: const Text('Tambahkan Dari Galeri'),
            ),
            ElevatedButton(
              onPressed: () {
                profileController.pickImageCamera();
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                backgroundColor: const Color.fromARGB(255, 0, 0, 0),
              ),
              child: const Text('Tambahkan Dari Kamera'),
            ),
          ],
        ),
      ),
    );
  }
}

// ... (remaining code)
