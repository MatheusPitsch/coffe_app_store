// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'coffe_list_card.dart';
import 'row_see_more_product.dart';
import 'wellcome_client.dart';

class BodyHomePage extends StatefulWidget {
  const BodyHomePage({Key? key}) : super(key: key);

  @override
  State<BodyHomePage> createState() => _BodyHomePageState();
}

class _BodyHomePageState extends State<BodyHomePage> {
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
            const RowSeeMoreProduct(),
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
    );
  }
}
