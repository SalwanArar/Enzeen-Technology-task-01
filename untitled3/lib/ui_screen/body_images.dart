import 'package:flutter/material.dart';
import 'card_item.dart';

class BodyImages extends StatelessWidget {
  const BodyImages({Key? key, this.num = 9}) : super(key: key);
  final int num;

  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 16.0,
        crossAxisSpacing: 12.0,
        childAspectRatio: 0.55,
      ),
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: List.generate(
        num,
        (index) => const CardItem(),
      ),
    );
  }
}
