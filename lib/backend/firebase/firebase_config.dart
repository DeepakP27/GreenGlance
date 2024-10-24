import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAhDEBE_5W9BskEW6sk1q1T9AdYYZaK8E4",
            authDomain: "recyclingproject-97aeb.firebaseapp.com",
            projectId: "recyclingproject-97aeb",
            storageBucket: "recyclingproject-97aeb.appspot.com",
            messagingSenderId: "484424761087",
            appId: "1:484424761087:web:0fe5b4be76b847ddf356ca",
            measurementId: "G-SEZ70ZWL79"));
  } else {
    await Firebase.initializeApp();
  }
}
