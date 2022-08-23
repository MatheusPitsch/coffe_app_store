import 'package:boxicons/boxicons.dart';
import 'package:flutter/material.dart';

class bottomNavigationBarHome extends StatelessWidget {
  const bottomNavigationBarHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.black,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(
            Boxicons.bx_store,
            color: Colors.black,
          ),
          label: "Inicio",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.coffee_outlined,
            color: Colors.black,
          ),
          label: "Cafés",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.favorite_border,
            color: Colors.black,
          ),
          label: "Favoritos",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person_outline,
            color: Colors.black,
          ),
          label: "Pefil",
        ),
      ],
    );
  }
}
