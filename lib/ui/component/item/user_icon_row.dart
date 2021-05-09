import 'package:flutter/material.dart';

import 'user_icon.dart';

class UserIconRow extends StatelessWidget {
  final List<String> userIconUrls;

  UserIconRow(this.userIconUrls);

  final unit = 16;
  final size = 20.toDouble();

  @override
  Widget build(BuildContext context) {
    if (userIconUrls.isEmpty) {
      return const SizedBox.shrink();
    }
    final maxLeft = unit * (userIconUrls.length - 1).toDouble();
    final stackElements = userIconUrls.asMap().entries.map(
      (entry) {
        final index = entry.key;
        final userIconUrl = entry.value;
        return Positioned(
          child: UserIcon(userIconUrl, size),
          left: maxLeft - (unit * index),
        );
      },
    ).toList();
    return Container(
      height: size,
      child: Stack(fit: StackFit.loose, children: [...stackElements]),
    );
  }
}
