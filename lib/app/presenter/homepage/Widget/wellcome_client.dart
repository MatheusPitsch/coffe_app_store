// ignore: camel_case_types
import 'package:flutter/material.dart';

// ignore: camel_case_types
class wellcome_Client extends StatelessWidget {
  const wellcome_Client({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Bem Vindo(a),  Nadia',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  image: const DecorationImage(
                    image: AssetImage("assets/woman_profile.jfif"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
        const Text(
          'Selecione o melhor sabor para',
          style: TextStyle(color: Colors.grey, fontSize: 20),
        ),
        const Text(
          'o seu proximo café!',
          style: TextStyle(color: Colors.grey, fontSize: 20),
        ),
      ],
    );
  }
}
