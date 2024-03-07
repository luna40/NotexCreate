import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyARvpA2XxfXXLgGGQqgnuadtmRRxt6c6fQ",
            authDomain: "notexapi.firebaseapp.com",
            projectId: "notexapi",
            storageBucket: "notexapi.appspot.com",
            messagingSenderId: "615967067191",
            appId: "1:615967067191:web:a5ae24c467e162fa5303b2",
            measurementId: "G-W6HZZ4635T"));
  } else {
    await Firebase.initializeApp();
  }
}
