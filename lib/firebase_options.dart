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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCI9VQVdj5Wox6K3kma4ILM-Ji3cbUAzhM',
    appId: '1:602161476292:android:e7e0fbc782d352f7b4cf91',
    messagingSenderId: '602161476292',
    projectId: 'chat-app-83b58',
    storageBucket: 'chat-app-83b58.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDkzGj_gLoXTQSa6gVBSDvu4hTraoPdhsw',
    appId: '1:602161476292:ios:a3fd9990a5140b86b4cf91',
    messagingSenderId: '602161476292',
    projectId: 'chat-app-83b58',
    storageBucket: 'chat-app-83b58.appspot.com',
    androidClientId: '602161476292-j8hlit11jr26ieas1b0l3rq5g6cdj13v.apps.googleusercontent.com',
    iosClientId: '602161476292-dme5upmpl071t788k9c18m5ujhggq148.apps.googleusercontent.com',
    iosBundleId: 'com.example.presentation2',
  );
}
