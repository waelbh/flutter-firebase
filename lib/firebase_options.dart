// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyCAPcXpnfqZu-fOWLnzvRCHmj7x8fLZBkw',
    appId: '1:382677268696:web:cba2dd71d52be8d818bfad',
    messagingSenderId: '382677268696',
    projectId: 'product-d18c0',
    authDomain: 'product-d18c0.firebaseapp.com',
    storageBucket: 'product-d18c0.appspot.com',
    measurementId: 'G-NTZNH20VXD',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC37tfOd1Bg0VVv4nqjfYwnAencIijXhDk',
    appId: '1:382677268696:android:5a262ef6812573b518bfad',
    messagingSenderId: '382677268696',
    projectId: 'product-d18c0',
    storageBucket: 'product-d18c0.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD0uvmVWOcZEpYh-s4Se_nzpQcouRwIieo',
    appId: '1:382677268696:ios:7102d50b54baf9df18bfad',
    messagingSenderId: '382677268696',
    projectId: 'product-d18c0',
    storageBucket: 'product-d18c0.appspot.com',
    iosBundleId: 'com.example.suggestionflutter',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD0uvmVWOcZEpYh-s4Se_nzpQcouRwIieo',
    appId: '1:382677268696:ios:7102d50b54baf9df18bfad',
    messagingSenderId: '382677268696',
    projectId: 'product-d18c0',
    storageBucket: 'product-d18c0.appspot.com',
    iosBundleId: 'com.example.suggestionflutter',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCAPcXpnfqZu-fOWLnzvRCHmj7x8fLZBkw',
    appId: '1:382677268696:web:f6ca445b0c6ff4a418bfad',
    messagingSenderId: '382677268696',
    projectId: 'product-d18c0',
    authDomain: 'product-d18c0.firebaseapp.com',
    storageBucket: 'product-d18c0.appspot.com',
    measurementId: 'G-SN3SG4Q7QJ',
  );
}
