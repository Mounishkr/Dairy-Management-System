import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCYRWDzikYqLJgErVtr1RBWlkipolQyMEw",
            authDomain: "test-74e83.firebaseapp.com",
            projectId: "test-74e83",
            storageBucket: "test-74e83.appspot.com",
            messagingSenderId: "273030865083",
            appId: "1:273030865083:web:f3dd828689881526f3899e",
            measurementId: "G-94ZFLDFTZG"));
  } else {
    await Firebase.initializeApp();
  }
}
