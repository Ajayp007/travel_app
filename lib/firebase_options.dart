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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyCOBqnh4WF6Q1RQPDL1jBq6pxPArUWYYCc',
    appId: '1:453472054584:web:c2bdc910363a4b7f1c65cd',
    messagingSenderId: '453472054584',
    projectId: 'travel-80942',
    authDomain: 'travel-80942.firebaseapp.com',
    storageBucket: 'travel-80942.appspot.com',
    measurementId: 'G-Y79M1GZ1N7',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB1LXEdSD5RlFTW2lxM7IkIdIhhdzvJypM',
    appId: '1:453472054584:android:35bcb8a2863ccaff1c65cd',
    messagingSenderId: '453472054584',
    projectId: 'travel-80942',
    storageBucket: 'travel-80942.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCthzYDcGWNk4u4qqLkrdg094ESRrHMksc',
    appId: '1:453472054584:ios:bd5edcd20f17a0a01c65cd',
    messagingSenderId: '453472054584',
    projectId: 'travel-80942',
    storageBucket: 'travel-80942.appspot.com',
    iosBundleId: 'com.example.travelApp',
  );
}