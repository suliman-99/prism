import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Column(
        children: [
          const Text('Deployed By Abo Iscander'),
          const SizedBox(
            height: 20,
          ),
          StreamBuilder(
            stream:
                FirebaseFirestore.instance.collection('Categories').snapshots(),
            builder:
                (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (snapshot.hasError) {
                return const Text('ERROR .');
              }
              if (snapshot.connectionState == ConnectionState.active) {
                return SizedBox(
                  height: 400,
                  child: ListView(
                    children: snapshot.data!.docs.map((dynamic e) {
                      String name = e.id;
                      String len = e.data()['products'].length.toString();
                      return Column(
                        children: [
                          Text("The Number of the Product in $name is $len ."),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      );
                    }).toList(),
                  ),
                );
              }
              return const CircularProgressIndicator();
            },
          ),
        ],
      ),
    );
  }
}
