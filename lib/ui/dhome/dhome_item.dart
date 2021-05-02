import 'package:app/model/feed_item.dart';
import 'package:flutter/material.dart';

class DHomeItem extends StatelessWidget {
  final int _index;
  final FeedItem feedItem;

  DHomeItem(this._index, this.feedItem);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("tag"),
          Expanded(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image(
                  width: 100,
                  height: 100,
                  image: NetworkImage(feedItem.image.smallUrl),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                            child: Text(
                              feedItem.title.jaTitle,
                              maxLines: 2,
                              style: TextStyle(),
                              overflow: TextOverflow.ellipsis,
                            ),
                            alignment: Alignment.centerLeft,
                          ),
                          flex: 2,
                        ),
                        Expanded(
                          child: Row(
                            children: [
                              Icon(Icons.article),
                            ],
                          ),
                          flex: 1,
                        ),
                        Expanded(
                            child: Text(feedItem.publishedAt.toString()),
                            flex: 1),
                      ],
                    ),
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
