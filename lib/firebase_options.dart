// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDumhi7Q0szxgtyYaH2TvNQjESsV-ql2m0',
    appId: '1:149060664559:web:9a217452b389d5b2e4af1a',
    messagingSenderId: '149060664559',
    projectId: 'book-app-57f98',
    authDomain: 'book-app-57f98.firebaseapp.com',
    storageBucket: 'book-app-57f98.appspot.com',
    measurementId: 'G-FYBBMEN8L9',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAi-FdcEFbnKx25QKe_NTl9Ipo-huXKNJM',
    appId: '1:149060664559:android:eeaf21b23e0ceee6e4af1a',
    messagingSenderId: '149060664559',
    projectId: 'book-app-57f98',
    storageBucket: 'book-app-57f98.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCnh8SRFXB49-criHmVc154vq3T6qEL5Eg',
    appId: '1:149060664559:ios:8cea41dbc1a124f9e4af1a',
    messagingSenderId: '149060664559',
    projectId: 'book-app-57f98',
    storageBucket: 'book-app-57f98.appspot.com',
    iosBundleId: 'com.example.onlineBookReadingApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCnh8SRFXB49-criHmVc154vq3T6qEL5Eg',
    appId: '1:149060664559:ios:2c88d0c314ece8c3e4af1a',
    messagingSenderId: '149060664559',
    projectId: 'book-app-57f98',
    storageBucket: 'book-app-57f98.appspot.com',
    iosBundleId: 'com.example.onlineBookReadingApp.RunnerTests',
  );
}
