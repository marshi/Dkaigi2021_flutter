import 'package:app/model/feed_item.dart';
import 'package:flutter/material.dart';

import 'user_icon_row.dart';

class SpeakerIconRow extends StatelessWidget {
  final FeedItem feedItem;

  const SpeakerIconRow(this.feedItem);

  @override
  Widget build(BuildContext context) {
    if (feedItem is Podcast) {
      final podcast = feedItem as Podcast;
      return UserIconRow(podcast.speakers.map((e) => e.iconUrl).toList());
    } else {
      return const SizedBox.shrink();
    }
  }
}
