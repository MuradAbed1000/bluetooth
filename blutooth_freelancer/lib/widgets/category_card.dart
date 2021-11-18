import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final Icon? icon;
  final String? name;
  final GestureTapCallback? onTap;
  const CategoryCard({Key? key, this.icon, this.name, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, bottom: 25, top: 30),
      child: GestureDetector(
        onTap: onTap,
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
      ),
    );
  }
}
