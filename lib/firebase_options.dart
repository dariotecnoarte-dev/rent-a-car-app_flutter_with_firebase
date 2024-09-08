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
    apiKey: 'AIzaSyDUOovzbQ-GVrZilDp1008lQgqVvT_tvt8',
    appId: '1:118858021430:web:f60a87bcca9e2671007697',
    messagingSenderId: '118858021430',
    projectId: 'login-app-e162c',
    authDomain: 'login-app-e162c.firebaseapp.com',
    storageBucket: 'login-app-e162c.appspot.com',
    measurementId: 'G-WMEVZPX114',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyApzDeofmvVc7nzpi8IThtA12nys7OA56w',
    appId: '1:118858021430:android:89bb3e4b2dcece8d007697',
    messagingSenderId: '118858021430',
    projectId: 'login-app-e162c',
    storageBucket: 'login-app-e162c.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDGYPI0q4eUGb2GfXbv1b6n0Ywg81-lkQ4',
    appId: '1:118858021430:ios:a425c04317d66272007697',
    messagingSenderId: '118858021430',
    projectId: 'login-app-e162c',
    storageBucket: 'login-app-e162c.appspot.com',
    iosBundleId: 'com.example.carRentalApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDGYPI0q4eUGb2GfXbv1b6n0Ywg81-lkQ4',
    appId: '1:118858021430:ios:a425c04317d66272007697',
    messagingSenderId: '118858021430',
    projectId: 'login-app-e162c',
    storageBucket: 'login-app-e162c.appspot.com',
    iosBundleId: 'com.example.carRentalApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDUOovzbQ-GVrZilDp1008lQgqVvT_tvt8',
    appId: '1:118858021430:web:01dbb67a4cc5a4a2007697',
    messagingSenderId: '118858021430',
    projectId: 'login-app-e162c',
    authDomain: 'login-app-e162c.firebaseapp.com',
    storageBucket: 'login-app-e162c.appspot.com',
    measurementId: 'G-12171WT96F',
  );
}
