import 'package:flutter/material.dart';

class UserIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: 20,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(40)),
        border: Border.all(color: Colors.grey),
        image: const DecorationImage(
          image: NetworkImage(
              "https://img.esa.io/uploads/production/members/50629/icon/thumb_l_e3139ad601f78e27866ab88251fc2f82.jpg"),
        ),
      ),
    );
  }
}
