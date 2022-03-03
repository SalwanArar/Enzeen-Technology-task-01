import 'package:flutter/material.dart';

class CardItem extends StatefulWidget {
  const CardItem({Key? key}) : super(key: key);

  @override
  State<CardItem> createState() => _CardItemState();
}

class _CardItemState extends State<CardItem> {
  bool favorite = false;
  Size? size;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: size!.height * 0.2,
            width: size!.width * 0.3,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Positioned(
                  child: Image.asset(
                    'assets/images/card_item.jpg',
                    fit: BoxFit.contain,
                  ),
                ),
                Positioned(
                  left: 0.0,
                  bottom: 0.0,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: List.generate(
                      3,
                      (index) => const Icon(
                        Icons.star,
                        color: Colors.orange,
                        size: 15.0,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  right: 0.0,
                  top: 0.0,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        favorite = !favorite;
                      });
                    },
                    child: Icon(
                      favorite ? Icons.favorite : Icons.favorite_border,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Text(
            '00.00/-',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            'Product Service',
          ),
          const Text(
            'Title Product',
          ),
        ],
      ),
    );
  }
}
