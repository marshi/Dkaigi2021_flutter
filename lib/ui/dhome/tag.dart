import 'package:app/model/media.dart';
import 'package:flutter/material.dart';

class Tag extends StatelessWidget {
  Media media;

  Tag(this.media);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(media.str, style: const TextStyle(color: Colors.white)),
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      decoration: ShapeDecoration(
        color: media.color,
        shape: const BeveledRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(6),
              bottomLeft: Radius.circular(0),
              bottomRight: Radius.circular(6),
              topRight: Radius.circular(0)),
        ),
      ),
    );
  }
}
