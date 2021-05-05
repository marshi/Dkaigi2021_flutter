import 'package:flutter/material.dart';

class UserIcon extends StatelessWidget {
  final String imageUrl;
  final double size;

  const UserIcon(this.imageUrl, this.size);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(40)),
        border: Border.all(color: Colors.grey),
        image: DecorationImage(
          image: NetworkImage(imageUrl),
        ),
      ),
    );
  }
}
