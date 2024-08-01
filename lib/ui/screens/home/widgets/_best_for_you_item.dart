import 'package:flutter/material.dart';

class BestForYouItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String price;
  final String bedroom;
  final String bathroom;

  const BestForYouItem(
      {super.key,
      required this.imageUrl,
      required this.title,
      required this.price,
      required this.bedroom,
      required this.bathroom});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image(
              height: 65,
              width: 65,
              fit: BoxFit.cover,
              image: NetworkImage(imageUrl),
            ),
          ),
          Container(
              padding: const EdgeInsets.only(left: 16),
              child: SizedBox(
                height: 65,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(fontSize: 16),
                    ),
                    Text('$price',
                        style:
                            TextStyle(color: Colors.blue[400], fontSize: 12)),
                    Row(
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.bed,
                              color: Colors.grey,
                              size: 16,
                            ),
                            Container(
                                margin: const EdgeInsets.only(left: 4),
                                child: Text(
                                  "$bedroom Bedroom",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 12),
                                ))
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 8),
                          child: Row(
                            children: [
                              Icon(
                                Icons.bathtub,
                                color: Colors.grey,
                                size: 16,
                              ),
                              Container(
                                  margin: const EdgeInsets.only(left: 4),
                                  child: Text(
                                    "$bathroom Bathroom",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 12),
                                  ))
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
