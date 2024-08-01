import 'package:flutter/material.dart';
import 'package:rent_app/ui/screens/home/widgets/_category_item.dart';

class CategoryBarWidget extends StatelessWidget {
  final category = CategoryData();
  CategoryBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45, // Increased height for better visibility
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: category.data.length,
        itemBuilder: (context, index) {
          return CategoryItem(name: category.data[index]);
        },
      ),
    );
  }
}

class CategoryData {
  final data = const [
    'House',
    'Apartment',
    'Room',
    'Villa',
    'Condo',
    'Townhouse',
    'Land',
    'Office',
    'Shop',
    'Warehouse',
    'Factory',
    'Building',
    'Farm',
    'Land',
    'House',
    'Apartment',
    'Room',
    'Villa',
    'Condo',
    'Townhouse',
    'Land',
    'Office',
    'Shop',
    'Warehouse',
    'Factory',
    'Building',
    'Farm',
    'Land',
    'House',
    'Apartment',
    'Room',
    'Villa',
    'Condo',
    'Townhouse',
    'Land',
    'Office',
    'Shop',
    'Warehouse',
    'Factory',
    'Building',
    'Farm',
    'Land',
    'House',
    'Apartment',
    'Room',
    'Villa',
    'Condo',
    'Townhouse',
    'Land',
    'Office',
    'Shop',
    'Warehouse',
    'Factory',
    'Building',
    'Farm',
    'Land'
  ];
}
