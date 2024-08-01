import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: Row(
        children: [
          Expanded(
              flex: 1,
              child: TextField(
                decoration: InputDecoration(
                    fillColor: Colors.grey[200],
                    filled: true,
                    prefixIcon: const Icon(Icons.search),
                    hintText: 'Search address, or near you',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide(color: Colors.grey[200]!),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide(color: Colors.grey[200]!),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide(color: Colors.grey[200]!))),
              )),
          Container(
            padding: const EdgeInsets.all(4),
            child: GestureDetector(
              child: InkWell(
                child: Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue[300]),
                    child: Icon(Icons.filter_list_alt)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
