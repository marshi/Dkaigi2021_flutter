import 'package:app/model/feed_item.dart';

import '../model/result.dart';

abstract class FeedRepository {
  Future<Result<List<FeedItem>>> feedContents();
}
