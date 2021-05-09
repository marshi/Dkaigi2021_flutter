import 'package:app/model/feed_item.dart';
import 'package:app/ui/component/item/tag.dart';
import 'package:flutter/material.dart';

class DhomeHeaderItem extends StatelessWidget {
  final FeedItem feedItem;

  DhomeHeaderItem(this.feedItem);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image(
            height: 200,
            image: NetworkImage(feedItem.image.largeUrl),
            fit: BoxFit.fitWidth,
          ),
          Column(
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          feedItem.title.jaTitle,
                          style: const TextStyle(fontSize: 26),
                          textAlign: TextAlign.start,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                      ],
                    ),
                  ),
                  const Expanded(
                    flex: 1,
                    child: Icon(
                      Icons.favorite_border_outlined,
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Tag(feedItem.media),
                  Container(
                      margin: const EdgeInsets.only(left: 10),
                      child: Text(feedItem.publishedAt.toString()))
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
