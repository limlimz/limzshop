// @dart=2.9
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:limzshop/Login.dart';
import 'package:limzshop/homepage.dart';
import 'package:limzshop/sign%20up.dart';
import 'package:firebase_core/firebase_core.dart';

import 'CartScreen.dart';
import 'WElcomepage.dart';
import 'checkoutScreen.dart';
import 'detail Screen.dart';
import 'listproducts.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Homepage();
          } else
            return Homepage();
        },
      ),
    );
  }
}
