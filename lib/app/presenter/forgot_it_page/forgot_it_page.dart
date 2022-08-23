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
            child: Container(
              height: 250,
              padding: const EdgeInsets.only(left: 30, right: 30),
              decoration: const BoxDecoration(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text("Digite seu E-mail para Recuperar a Senha"),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "E-mail",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.black),
                    onPressed: () {},
                    child: const Text("Enviar Codigo"),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
