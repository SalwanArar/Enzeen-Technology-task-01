import 'package:flutter/material.dart';
import 'package:untitled3/ui_screen/body_images.dart';

class ShopCategory extends StatelessWidget {
  const ShopCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    debugPrint("${size.width}\t${size.height}");
    return Card(
      child: Column(
        children: [
          SizedBox(
            height: size.height * 0.1,
            child: ListView(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              children: [
                SizedBox(
                  width: size.width * 0.6,
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: size.width * 0.1,
                      backgroundImage: const AssetImage(
                        'assets/images/card_item.jpg',
                      ),
                    ),
                    title: const Text('Sub Category'),
                  ),
                ),
                SizedBox(
                  width: size.width * 0.6,
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: size.width * 0.1,
                      backgroundImage: const AssetImage(
                        'assets/images/card_item.jpg',
                      ),
                    ),
                    title: const Text('Sub Category'),
                  ),
                ),
                SizedBox(
                  width: size.width * 0.6,
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: size.width * 0.1,
                      backgroundImage: const AssetImage(
                        'assets/images/card_item.jpg',
                      ),
                    ),
                    title: const Text('Sub Category'),
                  ),
                ),
              ],
            ),
          ),
          const BodyImages(
            num: 3,
          ),
        ],
      ),
    );
  }
}
