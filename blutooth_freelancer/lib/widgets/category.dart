import 'package:flutter/material.dart';

import '../settings.dart';
import 'category_card.dart';

class Category extends StatelessWidget {
  const Category({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          CategoryCard(
            icon: Icon(
              Icons.adjust_outlined,
              size: 40,
            ),
            name: 'Normal',
          ),
          CategoryCard(
            icon: Icon(
              Icons.eco_outlined,
              size: 40,
            ),
            name: 'Eco',
          ),
          CategoryCard(
            icon: Icon(
              Icons.volume_off_outlined,
              size: 40,
            ),
            name: 'Quite',
          ),
          CategoryCard(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => SettingsScreen()));
            },
            icon: Icon(
              Icons.settings,
              size: 40,
            ),
            name: 'Settings',
          )
        ],
      ),
    );
  }
}
