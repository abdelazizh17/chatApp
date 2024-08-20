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
    apiKey: 'AIzaSyBvmf1t4lde6UYGkPEV7Jw4pyQG16c3cRI',
    appId: '1:5947494366:web:9564f9befd549424b9574f',
    messagingSenderId: '5947494366',
    projectId: 'chat-app-16c8d',
    authDomain: 'chat-app-16c8d.firebaseapp.com',
    storageBucket: 'chat-app-16c8d.appspot.com',
    measurementId: 'G-8TW55GB0K0',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyChLTNqR_cM5Jkh4iAIvKwgzFtXbnJyxEA',
    appId: '1:5947494366:android:bc080060b0bbf3eab9574f',
    messagingSenderId: '5947494366',
    projectId: 'chat-app-16c8d',
    storageBucket: 'chat-app-16c8d.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAGe2xBUkKEje4bQ38frXFeiOturdGWfTU',
    appId: '1:5947494366:ios:a392cbe8c6e6afc9b9574f',
    messagingSenderId: '5947494366',
    projectId: 'chat-app-16c8d',
    storageBucket: 'chat-app-16c8d.appspot.com',
    iosBundleId: 'com.example.test',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAGe2xBUkKEje4bQ38frXFeiOturdGWfTU',
    appId: '1:5947494366:ios:a392cbe8c6e6afc9b9574f',
    messagingSenderId: '5947494366',
    projectId: 'chat-app-16c8d',
    storageBucket: 'chat-app-16c8d.appspot.com',
    iosBundleId: 'com.example.test',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBvmf1t4lde6UYGkPEV7Jw4pyQG16c3cRI',
    appId: '1:5947494366:web:257fa8bead3d5038b9574f',
    messagingSenderId: '5947494366',
    projectId: 'chat-app-16c8d',
    authDomain: 'chat-app-16c8d.firebaseapp.com',
    storageBucket: 'chat-app-16c8d.appspot.com',
    measurementId: 'G-LE5YYSQ2NR',
  );
}
