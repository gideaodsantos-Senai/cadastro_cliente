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
        return linux;
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX',
    appId: '1:123456789012:web:abcdef123456',
    messagingSenderId: '123456789012',
    projectId: 'desafio-cc32f',
    authDomain: 'desafio-cc32f.firebaseapp.com',
    storageBucket: 'desafio-cc32f.appspot.com',
    measurementId: 'G-XXXXXXXXXX',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX',
    appId: '1:123456789012:android:abcdef123456',
    messagingSenderId: '123456789012',
    projectId: 'desafio-cc32f',
    storageBucket: 'desafio-cc32f.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX',
    appId: '1:123456789012:ios:abcdef123456',
    messagingSenderId: '123456789012',
    projectId: 'desafio-cc32f',
    storageBucket: 'desafio-cc32f.appspot.com',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX',
    appId: '1:123456789012:macos:abcdef123456',
    messagingSenderId: '123456789012',
    projectId: 'desafio-cc32f',
    storageBucket: 'desafio-cc32f.appspot.com',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX',
    appId: '1:123456789012:windows:abcdef123456',
    messagingSenderId: '123456789012',
    projectId: 'desafio-cc32f',
    storageBucket: 'desafio-cc32f.appspot.com',
  );

  static const FirebaseOptions linux = FirebaseOptions(
    apiKey: 'AIzaSyBXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX',
    appId: '1:123456789012:linux:abcdef123456',
    messagingSenderId: '123456789012',
    projectId: 'desafio-cc32f',
    storageBucket: 'desafio-cc32f.appspot.com',
  );
}
