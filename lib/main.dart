import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'application/app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyCqhqdma4I2IlGT30Phi9pD8F_zhyQcm9Y",
      appId: "1:234878303253:web:16ac3b7c4f7b347540221c",
      messagingSenderId: "234878303253",
      projectId: "prism-7ca75",
    ),
  );
  runApp(const Application());
}
