import 'package:flutter/material.dart';
import 'user_title.dart';

class TopTitle extends StatelessWidget {
  const TopTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: MediaQuery.of(context).size.height * 0.2,
      child: ListView(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        children: List.generate(
          10,
          (index) => UserTitle(
            id: index,
          ),
        ),
      ),
    );
  }
}
