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
    apiKey: 'AIzaSyAIriRSDhc4dGLBEOhjRMTcy4sZ_l05-A0',
    appId: '1:952040508236:web:bc1b7b1d6bd29de70cdde9',
    messagingSenderId: '952040508236',
    projectId: 'bustrack-2e4f4',
    authDomain: 'bustrack-2e4f4.firebaseapp.com',
    storageBucket: 'bustrack-2e4f4.appspot.com',
    measurementId: 'G-Q4N5M3XZQN',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyChKtaQjwcXozOV1Mpo70j2dxzTA9fXmLE',
    appId: '1:952040508236:android:c9d72b80a6dabf0c0cdde9',
    messagingSenderId: '952040508236',
    projectId: 'bustrack-2e4f4',
    storageBucket: 'bustrack-2e4f4.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAljKVJmbXpUbBa5DzQcviHN_izYy_c9-w',
    appId: '1:952040508236:ios:79a42bd06d5e1e2f0cdde9',
    messagingSenderId: '952040508236',
    projectId: 'bustrack-2e4f4',
    storageBucket: 'bustrack-2e4f4.appspot.com',
    iosBundleId: 'com.example.busTrack',
  );
}