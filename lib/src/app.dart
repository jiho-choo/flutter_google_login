import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample_sns_login/src/pages/home.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Firebase.initializeApp(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Center(
            child: Text("울랄라~"),
          );
        }

        if (snapshot.connectionState == ConnectionState.done) {
          return Home();
        } else {
          return CircularProgressIndicator();
        }
      },
    );
  }
}
