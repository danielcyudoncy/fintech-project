import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDrw7hL5zBDe8r0SwVI5Z5J9UwGiQHq6IA",
            authDomain: "databaseproject-20ada.firebaseapp.com",
            projectId: "databaseproject-20ada",
            storageBucket: "databaseproject-20ada.appspot.com",
            messagingSenderId: "967117402022",
            appId: "1:967117402022:web:8e38210d046391f33c6967",
            measurementId: "G-TD939R29PD"));
  } else {
    await Firebase.initializeApp();
  }
}
