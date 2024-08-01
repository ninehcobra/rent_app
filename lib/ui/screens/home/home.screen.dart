import 'package:flutter/material.dart';
import 'package:rent_app/ui/screens/widgets/_best_for_you.dart';
import 'package:rent_app/ui/screens/widgets/_category_bar.dart';
import 'package:rent_app/ui/screens/widgets/_near_list.dart';
import 'package:rent_app/ui/screens/widgets/_search_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Poppins'),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Location',
                    style: TextStyle(color: Colors.grey[600]!, fontSize: 16),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 8),
                    child: Row(
                      children: [
                        Text('Jakarta',
                            style: TextStyle(
                                fontSize: 26,
                                fontWeight: FontWeight.w500,
                                color: Theme.of(context)
                                    .textTheme
                                    .titleMedium
                                    ?.color)),
                        Icon(
                          Icons.arrow_drop_down_sharp,
                          size: 32,
                        )
                      ],
                    ),
                  )
                ],
              ),
              const Icon(Icons.notifications_none_outlined, size: 44),
            ],
          ),
        ),
        body: Container(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              const SearchBarWidget(),
              CategoryBarWidget(),
              Container(
                padding: const EdgeInsets.only(top: 24),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Near from you',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'See more',
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              NearList(),
              Container(
                padding: const EdgeInsets.only(top: 24),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Best for you',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'See more',
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
              ),
              BestForYou()
            ],
          ),
        ),
      ),
    );
  }
}
