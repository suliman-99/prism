import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class Application extends StatelessWidget {
  Application({Key? key}) : super(key: key);

  final Future<FirebaseApp> initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Center(
        child: Text('Deployed By Abo Iscandar'),
      ),
    );
  }
}
