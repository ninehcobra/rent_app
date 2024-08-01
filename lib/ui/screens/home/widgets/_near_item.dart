import 'package:flutter/material.dart';

class NearItemWidget extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String owner;
  final String distance;

  const NearItemWidget(
      {super.key,
      required this.imageUrl,
      required this.title,
      required this.owner,
      required this.distance});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image(
              height: 290,
              width: 260,
              fit: BoxFit.cover,
              image: NetworkImage(imageUrl),
            ),
          ),
          Positioned(
            bottom: 20,
            left: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  owner,
                  style: TextStyle(color: Colors.grey),
                )
              ],
            ),
          ),
          Positioned(
            top: 15,
            right: 20,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.5),
                borderRadius: BorderRadius.circular(24),
              ),
              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
              child: Row(
                children: [
                  Icon(
                    Icons.location_on_outlined,
                    color: Colors.white,
                  ),
                  Text(
                    distance,
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
