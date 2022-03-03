import 'package:flutter/material.dart';

class CategorySlider extends StatelessWidget {
  const CategorySlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          categoryCard('Main Category 1'),
          categoryCard('Main Category 2'),
          categoryCard('Main Category 3'),
          categoryCard('Main Category 4'),
          categoryCard('Main Category 5'),
          categoryCard('Main Category 6'),
          categoryCard('Main Category 7'),
        ],
      ),
    );
  }
}

Widget categoryCard(String categoryName) {
  return SizedBox(
    width: 85.0,
    child: Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(
              Icons.person,
              color: Colors.grey,
            ),
          ),
          Text(
            categoryName,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    ),
  );
}
