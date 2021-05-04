import 'package:app/ui/dhome/user_icon.dart';
import 'package:flutter/material.dart';

class UserIconRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      child: Stack(
        fit: StackFit.loose,
        children: [
          Positioned(
            child: UserIcon(),
            left: 32,
          ),
          Positioned(
            child: UserIcon(),
            left: 16,
          ),
          Positioned(
            child: UserIcon(),
            left: 0,
          ),
        ],
      ),
    );
  }
}
