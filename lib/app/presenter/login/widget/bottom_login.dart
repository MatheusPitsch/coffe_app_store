import 'package:flutter/material.dart';

import '../../home/home_page.dart';

class ButtonLogin extends StatelessWidget {
  const ButtonLogin({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 45,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const HomePage()),
          );
        },
        child: const Text("Logar"),
      ),
    );
  }
}
