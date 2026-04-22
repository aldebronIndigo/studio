import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDu7d5hz6pX2-V0IwJDR5WH-11I0sCPPh4",
            authDomain: "aldebron-studio-7qe7hy.firebaseapp.com",
            projectId: "aldebron-studio-7qe7hy",
            storageBucket: "aldebron-studio-7qe7hy.firebasestorage.app",
            messagingSenderId: "787171650362",
            appId: "1:787171650362:web:0e88d75e957fe9a704be03"));
  } else {
    await Firebase.initializeApp();
  }
}
