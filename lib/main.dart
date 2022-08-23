
import 'package:flutter/material.dart';

import 'app/presenter/login_page/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Coffe_Store',
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
