import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'autentication/authentication.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mallika',
      theme: ThemeData(
        fontFamily: 'Cera Pro',
        primarySwatch: Colors.blue,
      ),
      home: const Auth(),
    );
  }
}
