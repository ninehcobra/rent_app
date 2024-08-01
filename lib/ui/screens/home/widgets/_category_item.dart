import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String name;
  const CategoryItem({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: Colors.blue[200], borderRadius: BorderRadius.circular(12)),
        margin: const EdgeInsets.symmetric(horizontal: 4),
        child: Center(
            child: Text(
          name,
          style: TextStyle(color: Colors.white),
        )));
  }
}
