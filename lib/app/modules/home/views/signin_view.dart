// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:online_book_reading_app/app/modules/home/views/home_view.dart';
import 'package:online_book_reading_app/app/modules/home/views/webview_view.dart';

class SignIn extends StatelessWidget {
  // ignore: avoid_types_as_parameter_names
  const SignIn({super.key, Key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff17161D),
      body: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 200, left: 50),
            child: const Text(
              'Login to your account',
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
            child: const TextField(
                decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Type Your Email',
              icon: Icon(Icons.mail),
              hintStyle: TextStyle(
                  fontFamily: 'Readex Pro',
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff7E8CA0)),
            )),
          ),
          Container(
            // width: 335,
            height: 48,
            margin: const EdgeInsets.only(left: 20, top: 380, right: 20),
            child: const TextField(
                decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Type Your Password',
              icon: Icon(Icons.lock),
              hintStyle: TextStyle(
                  fontFamily: 'Readex Pro',
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff7E8CA0)),
            )),
          ),
          Container(
            margin: const EdgeInsets.only(left: 250, top: 440),
            child: const Text(
              'Forgot Password?',
              style: TextStyle(
                  color: Color(0xff5360D7),
                  fontFamily: 'Readex Pro',
                  fontSize: 14,
                  fontWeight: FontWeight.w600),
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeView()));
              },
              child: const Text(
                'Sign In',
                style: TextStyle(
                    fontFamily: 'Readex Pro',
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color(0xffffffff)),
              ),
            ),
          ),
          Container(
            width: 371,
            height: 48,
            margin: const EdgeInsets.only(left: 20, top: 560),
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Color(0xff17161D),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => WebViewPage()));
              },
              child: const Text(
                'Or continue with',
                style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Readex Pro',
                    fontWeight: FontWeight.w400,
                    color: Color(0xffFFFFFF)),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 630),
            child: Stack(
              children: [
                InkWell(
                  onTap: () {
                    // Tambahkan navigasi ke halaman WebViewPage ketika logo Facebook ditekan
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => WebViewPage()),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.only(left: 100),
                    child: Image.asset('assets/images/fb.png'),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 170),
                  child: Image.asset('assets/images/google.png'),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 240),
                  child: Image.asset('assets/images/apple-white.png'),
                )
              ],
            ),
          ),
          Container(
            width: 219,
            height: 15,
            margin: const EdgeInsets.only(top: 850, left: 100),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Belum punya akun?',
                  style: TextStyle(
                      fontFamily: 'Lexend',
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Color(0xffFFFFFF)),
                ),
                Text(
                  ' Daftar dulu yuk',
                  style: TextStyle(
                      fontFamily: 'Lexend',
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff5360D7)),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
