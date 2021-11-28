import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:piggyvest_clone1/screens/screens.dart';

import 'widgets/base_screen.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    return  MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
        debugShowCheckedModeBanner: false,
      home: const base_screen(),
    );
  }
}
