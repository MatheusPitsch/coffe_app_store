// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types, must_be_immutable
class coffeListCard extends StatefulWidget {
  String imgPath;
  String coffeName;
  String description;
  String price;
  coffeListCard({
    Key? key,
    required this.imgPath,
    required this.coffeName,
    required this.description,
    required this.price,
  }) : super(key: key);

  @override
  State<coffeListCard> createState() => _coffeListCardState();
}

// ignore: camel_case_types
class _coffeListCardState extends State<coffeListCard> {
  bool _selectFavorite = false;

  void _isFavorite() {
    setState(() {
      _selectFavorite = !_selectFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
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
                height: 250,
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
                      widget.coffeName,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                    Text(
                      widget.description,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          widget.price,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Container(
                          height: 45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(60),
                            color: Colors.white,
                          ),
                          child: IconButton(
                            onPressed: _isFavorite,
                            icon: Icon(
                              CupertinoIcons.heart_fill,
                              size: 35,
                              color: _selectFavorite ? Colors.red : Colors.grey,
                            ),
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
                  widget.imgPath,
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
}
