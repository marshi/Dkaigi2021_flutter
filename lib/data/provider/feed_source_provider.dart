import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../remote/feed_data_source.dart';
import '../remote/feed_data_source_impl.dart';
import 'firebase_auth_provider.dart';

final feedDataSourceProvider = Provider<FeedDataSource>(
  (ref) => FeedDataSourceImpl(ref.read(firebaseAuthProvider)),
);
