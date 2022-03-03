import 'package:flutter/material.dart';

class UserTitle extends StatelessWidget {
  const UserTitle({Key? key, this.id = 1}) : super(key: key);
  final int id;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
      child: Column(
        children: [
          CircleAvatar(
            radius: MediaQuery.of(context).size.width * 0.1,
            backgroundImage: const AssetImage(
              'assets/images/avatar.png',
            ),
          ),
          Text(
            '@_user$id',
          ),
        ],
      ),
    );
  }
}
