import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:online_book_reading_app/app/modules/home/views/profile_view.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  HomeView({Key? key}) : super(key: key);

  final HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Beranda'),
        backgroundColor: const Color(0xff17161D),
        toolbarHeight: 70,
        actions: [
          IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: () {
              homeController.logout(); // Uncomment and modify as needed
            },
          ),
        ],
      ),
      backgroundColor: const Color(0xff17161D),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 20,
            // ignore: avoid_unnecessary_containers
            child: Container(
              child: const Text(
                'Hi Landito!',
                style: TextStyle(
                    fontFamily: 'Readex Pro',
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Color(0xffFFFFFF)),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, top: 30, right: 20),
            child: const Text(
              'What are we reading this time.',
              style: TextStyle(
                  fontFamily: 'Readex Pro',
                  fontSize: 16,
                  fontWeight: FontWeight.w200,
                  color: Color(0xffFFFFFF)),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20, top: 60),
            width: 400,
            height: 100,
            child: Card(
              color: const Color(0xffFFFFFF),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Image.asset('assets/images/cover.png'),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 190, left: 15),
            child: const Text(
              'Mungkin Anda Sukai',
              style: TextStyle(
                  fontFamily: 'Readex Pro',
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xffFFFFFF)),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 190, left: 280, right: 15),
            child: const Text(
              'Lebih banyak',
              style: TextStyle(
                  fontFamily: 'Readex Pro',
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xffFFFFFF)),
            ),
          ),
          Container(
            //color: const Color(0xffFFFFFF),
            margin: const EdgeInsets.only(
              top: 220,
              left: 15,
              right: 15,
            ),
            height: 190,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.topLeft, // Ganti sesuai kebutuhan
                  child: Obx(() => homeController.data.isEmpty
                      ? const Center(
                          child: CircularProgressIndicator(),
                        )
                      : Card(
                          semanticContainer: true,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: Container(
                            width: 115,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                        homeController.data[0].bookImage))),
                          ))),
                ),
                Align(
                  alignment: Alignment.bottomCenter, // Ganti sesuai kebutuhan
                  child: Obx(() => homeController.data.isEmpty
                      ? const Center(
                          child: CircularProgressIndicator(),
                        )
                      : Card(
                          semanticContainer: true,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: Container(
                            width: 115,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                        homeController.data[7].bookImage))),
                          ))),
                ),
                Align(
                  alignment: Alignment.topRight, // Ganti sesuai kebutuhan
                  child: Obx(() => homeController.data.isEmpty
                      ? const Center(
                          child: CircularProgressIndicator(),
                        )
                      : Card(
                          semanticContainer: true,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: Container(
                            width: 115,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                        homeController.data[6].bookImage))),
                          ))),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 450, left: 15),
            child: const Text(
              'Trendings Books',
              style: TextStyle(
                  fontFamily: 'Readex Pro',
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xffFFFFFF)),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 450, left: 280, right: 15),
            child: const Text(
              'Lebih banyak',
              style: TextStyle(
                  fontFamily: 'Readex Pro',
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xffFFFFFF)),
            ),
          ),
          Container(
            //color: const Color(0xffFFFFFF),
            margin: const EdgeInsets.only(
              top: 500,
              left: 15,
              right: 15,
            ),
            height: 190,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.topLeft, // Ganti sesuai kebutuhan
                  child: Obx(() => homeController.data.isEmpty
                      ? const Center(
                          child: CircularProgressIndicator(),
                        )
                      : Card(
                          semanticContainer: true,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: Container(
                            width: 115,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                        homeController.data[1].bookImage))),
                          ))),
                ),
                Align(
                  alignment: Alignment.bottomCenter, // Ganti sesuai kebutuhan
                  child: Obx(() => homeController.data.isEmpty
                      ? const Center(
                          child: CircularProgressIndicator(),
                        )
                      : Card(
                          semanticContainer: true,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: Container(
                            width: 115,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                        homeController.data[9].bookImage))),
                          ))),
                ),
                Align(
                  alignment: Alignment.topRight, // Ganti sesuai kebutuhan
                  child: Obx(() => homeController.data.isEmpty
                      ? const Center(
                          child: CircularProgressIndicator(),
                        )
                      : Card(
                          semanticContainer: true,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: Container(
                            width: 115,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                        homeController.data[2].bookImage))),
                          ))),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color(0xff17161D),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              backgroundColor: Color(0xff17161D),
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.library_books),
              label: 'Library',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
          onTap: (int index) {
            if (index == 3) {
              // If "Profile" is tapped, navigate to ProfileView
              Get.to(() => const ProfilView());
            }
          }),
    );
  }
}
