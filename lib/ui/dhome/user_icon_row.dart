import 'package:app/ui/dhome/user_icon.dart';
import 'package:flutter/material.dart';

class UserIconRow extends StatelessWidget {
  final List<String> userIconUrls;

  UserIconRow(this.userIconUrls);

  final unit = 16;

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
          child: UserIcon(userIconUrl),
          left: maxLeft - (unit * index),
        );
      },
    ).toList();
    return Container(
      height: 30,
      child: Stack(fit: StackFit.loose, children: [...stackElements]),
    );
  }
}
