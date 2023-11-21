// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_book_reading_app/app/modules/home/controllers/signup_controller.dart';

class SignUp extends StatelessWidget {
  // ignore: avoid_types_as_parameter_names
  final SignUpController _controller = Get.put(SignUpController());
  SignUp({super.key, Key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff17161D),
      body: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 200, left: 50),
            child: const Text(
              'SignUp your account',
              style: TextStyle(
                  fontFamily: 'Readex Pro',
                  fontSize: 28,
                  fontWeight: FontWeight.w400,
                  color: Color(0xffFFFFFF)),
            ),
          ),
          Container(
            // width: 335,
            height: 48,
            margin: const EdgeInsets.only(left: 20, top: 300, right: 20),
            child: TextField(
                style: const TextStyle(color: Colors.white),
                controller: _controller.emailcontroller,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Select Your Email',
                  icon: Icon(Icons.mail),
                  hintStyle: TextStyle(
                      fontFamily: 'Readex Pro',
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff7E8CA0)),
                )),
          ),
          Container(
            height: 48,
            margin: const EdgeInsets.only(left: 20, top: 380, right: 20),
            child: TextField(
              controller:
                  _controller.passwordcontroller, // Tambahkan controller
              obscureText: true, // Jika ini adalah field password
              style: const TextStyle(
                color: Colors.white, // Atur warna teks menjadi putih
                fontFamily: 'Readex Pro',
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Type Your Password',
                icon: Icon(Icons.lock),
                hintStyle: TextStyle(
                  fontFamily: 'Readex Pro',
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff7E8CA0),
                ),
              ),
            ),
          ),
          Container(
            width: 371,
            height: 48,
            margin: const EdgeInsets.only(left: 20, top: 500),
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: const Color(0xff5360D7),
              ),
              onPressed: () {
                _controller.registerUser(_controller.emailcontroller.text,
                    _controller.passwordcontroller.text);
              },
              child: const Text(
                'Sign Up',
                style: TextStyle(
                    fontFamily: 'Readex Pro',
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color(0xffffffff)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
