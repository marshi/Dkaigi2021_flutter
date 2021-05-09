import 'package:app/model/feed_item.dart';
import 'package:app/ui/component/item/tag.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'speaker_icon_row.dart';

class DHomeItem extends StatelessWidget {
  final int _index;
  final FeedItem feedItem;

  DHomeItem(this._index, this.feedItem);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Tag(feedItem.media),
          const SizedBox(width: 0, height: 10),
          Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fitHeight,
                    image: NetworkImage(feedItem.image.smallUrl),
                  ),
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Container(
                  height: 100,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          feedItem.title.jaTitle,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        alignment: Alignment.centerLeft,
                      ),
                      const SizedBox(height: 10),
                      SpeakerIconRow(feedItem),
                      Expanded(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(feedItem.publishedAt.toString()),
                            const Icon(Icons.favorite_border_outlined),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
