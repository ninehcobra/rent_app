import 'package:flutter/material.dart';
import 'package:rent_app/ui/screens/home/widgets/_best_for_you_item.dart';

class BestForYou extends StatelessWidget {
  final bfyData = BFYData();

  BestForYou({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: bfyData.data.length,
        itemBuilder: (context, index) {
          final item = bfyData.data[index];
          return BestForYouItem(
            imageUrl: item.imageUrl,
            title: item.title,
            price: item.price,
            bedroom: item.bedroom,
            bathroom: item.bathroom,
          );
        },
      ),
    );
  }
}

class BFYData {
  final List<BFYItem> data = const <BFYItem>[
    BFYItem(
      imageUrl:
          'https://th.bing.com/th/id/OIP.2ENyp9ikQ6oWqiW018oUFgHaE8?w=270&h=180&c=7&r=0&o=5&pid=1.7',
      title: 'Kassaw',
      price: '2.500.000.000 VND/ year',
      bedroom: '4',
      bathroom: '12',
    ),
    BFYItem(
      imageUrl:
          "https://th.bing.com/th/id/OIP.jvNMdRjQ8wzozbgXi4aWWAHaEg?rs=1&pid=ImgDetMain",
      title: 'O11223aaar house',
      price: '3.00.000.000 VND/ year',
      bedroom: '12',
      bathroom: '22',
    ),
    BFYItem(
      imageUrl:
          'https://th.bing.com/th/id/OIP.StgyA2Y4wV-EKSOF7RDxTQHaHg?w=690&h=700&rs=1&pid=ImgDetMain',
      title: 'Baaas123 ',
      price: '12.00.000.000 VND/ year',
      bedroom: '32',
      bathroom: '22',
    ),
    BFYItem(
      imageUrl:
          'https://i.pinimg.com/474x/78/18/39/78183909b3b6a5643f56150e99d605a6.jpg',
      title: 'OLdiaad house',
      price: '4.500.000.000 VND/ year',
      bedroom: '33',
      bathroom: '22',
    )
  ];
}

class BFYItem {
  final String imageUrl;
  final String title;
  final String price;
  final String bedroom;
  final String bathroom;

  const BFYItem({
    required this.imageUrl,
    required this.title,
    required this.price,
    required this.bedroom,
    required this.bathroom,
  });
}
