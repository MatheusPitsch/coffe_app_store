// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:boxicons/boxicons.dart';
import 'package:flutter/material.dart';


import 'Widget/coffe_list_card.dart';
import 'Widget/line_see_more_product.dart';
import 'Widget/wellcome_client.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(15),
          children: [
            const wellcome_Client(),
            const SizedBox(
              height: 40,
            ),
            const lineSeeMoreProduct(),
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
                      imgPath: 'assets/coffe1.png',
                      coffeName: "Café Arara",
                      description:
                          "O café Arara mostra potência de sabor e notas de chocolate. ",
                      price: "R\$4,99",
                      isFavorite: false),
                  coffeListCard(
                    imgPath: 'assets/coffe1.png',
                    coffeName: "Café Clássico",
                    description:
                        "Nosso café Clássico traz notas sensoriais de chocolate, caramelo e furtas secas.",
                    price: "R\$6,69",
                    isFavorite: false,
                  ),
                  coffeListCard(
                    imgPath: 'assets/coffe1.png',
                    coffeName: "Café Geisha",
                    description:
                        "Café espresso com notas de flores de jasmin e carambola madura.",
                    price: "R\$5,92",
                    isFavorite: false,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Boxicons.bx_store),
            label: "Inicio",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.abc
            ),
            label: "Cafés",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Favoritos",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Pefil",
          ),
        ],
      ),
    );
  }
}
