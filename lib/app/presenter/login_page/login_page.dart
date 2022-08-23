// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:coffe_store_app/app/presenter/login_page/widget/container_login_info.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        child: Stack(
          children: [
            Image.asset(
              "assets/FEATURED_IMAGE.jpg",
              width: double.maxFinite,
              height: double.maxFinite,
              fit: BoxFit.cover,
            ),
            const ContainerLoginInfo(),
          ],
        ),
      ),
    );
  }
}
