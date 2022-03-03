import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled3/ui_screen/shop_category.dart';
import 'ui_screen/search_field.dart';
import 'ui_screen/top_image_slider.dart';
import 'ui_screen/category_slider.dart';
import 'ui_screen/body_images.dart';
import 'ui_screen/top_title.dart';
import 'ui_screen/footer_main_page.dart';

import 'package:footer/footer_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'USell Up Demo',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.shopping_bag_outlined,
          color: Colors.black,
        ),
        title: SearchWidget(
          hintText: 'Search',
          onChanged: (String value) {},
          text: 'Search',
        ),
        elevation: 0.0,
      ),
      body: FooterView(
        children: const [
          TopSlideshow(),
          SizedBox(
            height: 4.0,
          ),
          CategorySlider(),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              '#BEST TITLE',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22.0,
              ),
            ),
          ),
          BodyImages(),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              '#TOP TITLE',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22.0,
              ),
            ),
          ),
          TopTitle(),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              '#SHOP BY CATEGORY',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22.0,
              ),
            ),
          ),
          ShopCategory(),
        ],
        footer: footerMainPage(context),
        flex: 8,
      ),
    );
  }
}
