import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(10),
          children: [
            Column(
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
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Sabores da Semana",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: const Text(
                    "Ver Todos",
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              height: 500,
              child: ListView(
                clipBehavior: Clip.none,
                scrollDirection: Axis.horizontal,
                children: [
                  coffeListCard(
                      'assets/coffe1.png',
                      "Café Arara",
                      "O café Arara mostra potência de sabor e notas de chocolate. ",
                      "R\$4,99",
                      false),
                  coffeListCard(
                    'assets/coffe1.png',
                    "Café Clássico",
                    "Nosso café Clássico traz notas sensoriais de chocolate, caramelo e furtas secas.",
                    "R\$6,69",
                    false,
                  ),
                  coffeListCard(
                    'assets/coffe1.png',
                    "Café Clássico",
                    "Nosso café Clássico traz notas sensoriais de chocolate, caramelo e furtas secas.",
                    "R\$6,69",
                    false,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget coffeListCard(
  String imgPath,
  String coffeName,
  String description,
  String price,
  bool isFavorite,
) {
  return Padding(
    padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
    child: Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.topCenter,
          children: [
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.only(
                left: 20,
                right: 10,
                top: 50,
              ),
              height: 270,
              width: 230,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xFFDAB68C),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    coffeName,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
                  Text(
                    description,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        price,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          CupertinoIcons.heart_fill,
                          size: 35,
                          color: isFavorite ? Colors.red : Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              top: -80,
              child: Image.asset(
                imgPath,
                scale: 3.5,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          width: 215,
          height: 45,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              primary: Colors.brown.shade900,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
            child: const Text("Comprar Agora"),
          ),
        ),
      ],
    ),
  );
}
