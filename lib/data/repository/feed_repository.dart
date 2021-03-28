import '../model/dkaigi/feed_item.dart';

import '../model/result.dart';

abstract class FeedRepository {
  Future<Result<FeedItem>> feedContents();
}
