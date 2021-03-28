import 'package:app/data/provider/feed_source_provider.dart';
import 'package:app/data/repository/feed_repository.dart';
import 'package:app/data/repository/feed_repository_impl.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final feedRepositoryProvider = Provider<FeedRepository>(
    (ref) => FeedRepositoryImpl(dataSource: ref.read(feedDataSourceProvider)));
