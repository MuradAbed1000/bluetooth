import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final Icon? icon;
  final String? name;
  const CategoryCard({Key? key, this.icon, this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, bottom: 25, top: 30),
      child: Container(
        width: 50,
        child: Column(
          children: [
            icon!,
            Text(
              name!,
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
