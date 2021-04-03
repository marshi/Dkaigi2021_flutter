import 'package:app/data/model/dkaigi/feed_item.dart';
import 'package:app/data/remote/feed_data_source.dart';

import '../model/result.dart';
import 'feed_repository.dart';

class FeedRepositoryImpl implements FeedRepository {
  FeedRepositoryImpl({required FeedDataSource dataSource})
      : _dataSource = dataSource;

  final FeedDataSource _dataSource;

  @override
  Future<Result<List<FeedItem>>> feedContents() {
    return _dataSource.feedContents();
  }
}
