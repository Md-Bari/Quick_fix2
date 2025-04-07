// ignore_for_file: prefer_const_constructors

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sneakers_app/view/navigator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBlw4K_YbsWBeJLHNIQ1WBoQYPYMmCPdPA",
            authDomain: "fire-setup-932f2.firebaseapp.com",
            projectId: "fire-setup-932f2",
            storageBucket: "fire-setup-932f2.firebasestorage.app",
            messagingSenderId: "73098558108",
            appId: "1:73098558108:web:47defa528adb795b0d0b59"));
  } else {
    await Firebase.initializeApp();
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Quicksand',
      ),
      title: 'Quick Fix ',
      home: MainNavigator(),
    );
  }
}
