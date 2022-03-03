import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class TopSlideshow extends StatelessWidget {
  const TopSlideshow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ImageSlideshow(
      children: [
        Image.asset(
          'assets/images/slideshow_01.jpg',
          fit: BoxFit.fill,
        ),
        Image.asset(
          'assets/images/slideshow_02.jpg',
          fit: BoxFit.fill,
        ),
        Image.asset(
          'assets/images/slideshow_03.jpg',
          fit: BoxFit.fill,
        ),
        Image.asset(
          'assets/images/slideshow_04.jpg',
          fit: BoxFit.fill,
        ),
      ],
      width: double.infinity,
      autoPlayInterval: 3000,
      isLoop: true,
    );
  }
}
