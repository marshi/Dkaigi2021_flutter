import 'package:flutter/material.dart';

class DHomeItem extends StatelessWidget {
  final int _index;

  DHomeItem(this._index);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: Column(
        children: [
          Text("tag"),
          Expanded(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Image(
                  width: 100,
                  height: 100,
                  image: NetworkImage(
                      "https://flutter.dev/images/catalog-widget-placeholder.png"),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          child: Center(child: Text("title $_index")), flex: 2),
                      Expanded(
                        child: Row(
                          children: [
                            Icon(Icons.article),
                          ],
                        ),
                        flex: 1,
                      ),
                      Expanded(child: Text("Datetime"), flex: 1),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
