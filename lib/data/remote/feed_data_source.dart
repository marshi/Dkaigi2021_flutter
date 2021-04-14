import 'package:app/data/model/dkaigi/feed/feed_response.dart';
import 'package:app/data/model/result.dart';

abstract class FeedDataSource {
  Future<FeedResponse> feedContents();
}
