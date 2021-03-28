import 'package:app/data/model/dkaigi/feed_item.dart';
import 'package:app/data/model/result.dart';

abstract class FeedDataSource {
  Future<Result<FeedItem>> feedContents();
}
