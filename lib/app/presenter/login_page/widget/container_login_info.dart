import 'package:flutter/material.dart';

import 'bottom_login.dart';
import 'text_fild_camp_info.dart';

class ContainerLoginInfo extends StatelessWidget {
  const ContainerLoginInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.85,
            padding: const EdgeInsets.only(
              left: 30,
              right: 30,
              top: 60,
              bottom: 40,
            ),
            decoration: BoxDecoration(
              color: Colors.white70,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                TextFildCampInfo(
                  hintTextCamp: "Login",
                ),
                const SizedBox(
                  height: 15,
                ),
                TextFildCampInfo(
                  hintTextCamp: "Senha",
                ),
                const SizedBox(
                  height: 25,
                ),
                const ButtonLogin(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
