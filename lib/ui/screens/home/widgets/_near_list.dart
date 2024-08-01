import 'package:flutter/material.dart';
import 'package:rent_app/ui/screens/home/widgets/_near_item.dart';

class NearList extends StatelessWidget {
  final nearData = NearLocationData();

  NearList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300, // Adjust as needed
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: nearData.data.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(right: 20),
            child: NearItemWidget(
              distance: nearData.data[index].distance,
              imageUrl: nearData.data[index].imageUrl,
              title: nearData.data[index].title,
              owner: nearData.data[index].owner,
            ),
          );
        },
      ),
    );
  }
}

class NearLocationData {
  final data = const <NearListItem>[
    NearListItem(
        imageUrl:
            'https://th.bing.com/th/id/OIP.x7BRa_WgNXwLVPZDbh5p-QHaE8?rs=1&pid=ImgDetMain',
        title: "Mordena",
        owner: "Công Chính",
        distance: "0.5 km"),
    NearListItem(
        imageUrl:
            "https://th.bing.com/th/id/R.245080f19a20213744f276cab710e26a?rik=kWJ%2fXGxqG256hA&riu=http%3a%2f%2fwww.staff.uni-mainz.de%2flustig%2fpics%2ffloripa%2fvila.JPG&ehk=QAiewC1hgsy%2blPLd5uwEL7cdYKfkBx4kX6f0tzilDbo%3d&risl=&pid=ImgRaw&r=0&sres=1&sresct=1",
        title: "Aleais Villa",
        owner: "Công Chính",
        distance: "1.2 km"),
    NearListItem(
        imageUrl:
            "https://mediaim.expedia.com/destination/1/1cf1ab6f2ad8135db55b84038fcf79e9.jpg",
        title: "Mordena",
        owner: "Papa Yaya",
        distance: "3.2 km"),
    NearListItem(
        imageUrl:
            'https://th.bing.com/th/id/R.05fe8de548fa6289f38bbb6a87f4a4ca?rik=UNF15gmsWo%2bF%2fQ&pid=ImgRaw&r=0',
        title: "Blueassa Villa",
        owner: "Mimi",
        distance: "4.32 km"),
    NearListItem(
        imageUrl:
            "https://th.bing.com/th/id/OIP.Tu0gakKSQpxPYGU3xFhOaAHaFj?rs=1&pid=ImgDetMain",
        title: "ÂSSA",
        owner: "Công Chính",
        distance: "20 km")
  ];
}

class NearListItem {
  final String imageUrl;
  final String title;
  final String owner;
  final String distance;

  const NearListItem({
    required this.imageUrl,
    required this.title,
    required this.owner,
    required this.distance,
  });
}
