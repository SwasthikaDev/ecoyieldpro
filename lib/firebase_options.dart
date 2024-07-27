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
    apiKey: 'AIzaSyBdQ0cfU5HnUf1CoYA8qyZynhXWp8IXvRQ',
    appId: '1:495805700014:web:7b12c0724beb6438d3da3f',
    messagingSenderId: '495805700014',
    projectId: 'ecoyieldpro',
    authDomain: 'ecoyieldpro.firebaseapp.com',
    storageBucket: 'ecoyieldpro.appspot.com',
    measurementId: 'G-CYKJYCZH6Y',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBWgG2lL40LgLFio1x1NYyfG02wLCzx268',
    appId: '1:495805700014:android:f1220aa7165c643ed3da3f',
    messagingSenderId: '495805700014',
    projectId: 'ecoyieldpro',
    storageBucket: 'ecoyieldpro.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBPwiB53kfMY2vljV-Ptf8hyxZrj1EBZLY',
    appId: '1:495805700014:ios:141d7374c17d3bbbd3da3f',
    messagingSenderId: '495805700014',
    projectId: 'ecoyieldpro',
    storageBucket: 'ecoyieldpro.appspot.com',
    iosBundleId: 'com.example.ecoyieldpro',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBPwiB53kfMY2vljV-Ptf8hyxZrj1EBZLY',
    appId: '1:495805700014:ios:141d7374c17d3bbbd3da3f',
    messagingSenderId: '495805700014',
    projectId: 'ecoyieldpro',
    storageBucket: 'ecoyieldpro.appspot.com',
    iosBundleId: 'com.example.ecoyieldpro',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBdQ0cfU5HnUf1CoYA8qyZynhXWp8IXvRQ',
    appId: '1:495805700014:web:40c634e222e2867ad3da3f',
    messagingSenderId: '495805700014',
    projectId: 'ecoyieldpro',
    authDomain: 'ecoyieldpro.firebaseapp.com',
    storageBucket: 'ecoyieldpro.appspot.com',
    measurementId: 'G-L5583VJDMF',
  );
}
