import 'package:flutter/material.dart';

class ForgotItPage extends StatelessWidget {
  const ForgotItPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 TextField(
                decoration: InputDecoration(
                  hintText: "E-mail",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                  )
                ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("data"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
